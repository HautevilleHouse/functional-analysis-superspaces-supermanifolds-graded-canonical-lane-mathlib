import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure GradedAdmittedObject where
  space : Supermanifold
  grading_coherent : Prop
  differential_operator : Type
  conclusion : grading_coherent

def GradedWitnessClosed (O : GradedAdmittedObject) : Prop :=
  O.grading_coherent

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse