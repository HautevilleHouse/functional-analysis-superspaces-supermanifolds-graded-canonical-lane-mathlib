import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure GradedAdmissibleClass where
  object : GradedAdmittedObject
  gradingPreserved : Prop
  remainderRecorded : Prop
  gateWitness : gradingPreserved ∨ remainderRecorded

def admittedClosure (A : GradedAdmissibleClass) : Prop :=
  GradedWitnessClosed A.object ∧ (A.gradingPreserved ∨ A.remainderRecorded)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse