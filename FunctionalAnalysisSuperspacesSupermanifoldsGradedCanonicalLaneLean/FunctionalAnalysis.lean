import FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean.SuperspacesSupermanifolds

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure BanachSuperSpace where
  underlying : GradedSuperVectorSpace
  norm : underlying → ℝ
  normNonneg : ∀ x : underlying, norm x ≥ 0
  normZero : ∀ x : underlying, norm x = 0 ↔ x = underlying.zero
  triangleIneq : ∀ x y : underlying, norm (underlying.addition x y) ≤ norm x + norm y
  scalarNorm : ∀ r : ℝ, ∀ x : underlying, norm (underlying.scalarMul r x) = |r| * norm x
  complete : Prop

def BanachSuperSpaceClosed (B : BanachSuperSpace) : Prop :=
  B.complete

theorem banach_super_space_closed (B : BanachSuperSpace) (h : B.complete) :
    BanachSuperSpaceClosed B := h

structure OperatorSuperSpace where
  source : BanachSuperSpace
  target : BanachSuperSpace
  linear : source.underlying → target.underlying
  bounded : ∃ C : ℝ, ∀ x : source.underlying, target.norm (linear x) ≤ C * source.norm x

def OperatorSuperSpaceClosed (O : OperatorSuperSpace) : Prop :=
  O.bounded

theorem operator_super_space_closed (O : OperatorSuperSpace) (h : O.bounded) :
    OperatorSuperSpaceClosed O := h

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse