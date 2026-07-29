import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure SupermanifoldChart where
  domain : Type u
  target : Type v
  coordinateMap : domain → target
  supersmooth : Prop
  transitionFunctions : Prop

def SupermanifoldChartClosed (C : SupermanifoldChart) : Prop :=
  C.supersmooth ∧ C.transitionFunctions

theorem supermanifold_chart_closed (C : SupermanifoldChart) :
    SupermanifoldChartClosed C := by
  exact And.intro C.supersmooth C.transitionFunctions

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse