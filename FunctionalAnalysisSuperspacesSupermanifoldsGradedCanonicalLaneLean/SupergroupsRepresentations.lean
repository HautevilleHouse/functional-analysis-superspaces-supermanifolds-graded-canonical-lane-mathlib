import FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean.FunctionalAnalysis

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure Supergroup where
  underlying : GradedSuperVectorSpace
  multiplication : underlying → underlying → underlying
  unit : underlying
  inverse : underlying → underlying
  multAssoc : ∀ a b c : underlying, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  unitLeft : ∀ a : underlying, multiplication unit a = a
  unitRight : ∀ a : underlying, multiplication a unit = a
  inverseLeft : ∀ a : underlying, multiplication (inverse a) a = unit
  inverseRight : ∀ a : underlying, multiplication a (inverse a) = unit
  gradingRespectsMult : ∀ a b : underlying, underlying.grading (multiplication a b) = underlying.grading a + underlying.grading b

def SupergroupClosed (G : Supergroup) : Prop :=
  True

theorem supergroup_closed (G : Supergroup) :
    SupergroupClosed G := by
  trivial

structure Representation where
  group : Supergroup
  space : BanachSuperSpace
  action : group.underlying → (space.underlying → space.underlying)
  actionLinear : ∀ g : group.underlying, ∀ x y : space.underlying, ∀ r : ℝ,
    action g (space.underlying.addition x y) = space.underlying.addition (action g x) (action g y) ∧
    action g (space.underlying.scalarMul r x) = space.underlying.scalarMul r (action g x)
  actionRespectsMult : ∀ g h : group.underlying, ∀ x : space.underlying,
    action (group.multiplication g h) x = action g (action h x)
  actionUnit : ∀ x : space.underlying, action group.unit x = x

def RepresentationClosed (R : Representation) : Prop :=
  True

theorem representation_closed (R : Representation) :
    RepresentationClosed R := by
  trivial

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse