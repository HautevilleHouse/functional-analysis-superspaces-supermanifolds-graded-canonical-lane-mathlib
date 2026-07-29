import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure SuperSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  grading : carrier → ℤ

structure SuperAdmittedObject where
  space : SuperSpace
  supercommutative : Prop
  gradedHochschildCohomology : Prop
  conclusion : supercommutative

structure SuperEndgameState where
  object : SuperAdmittedObject

def SuperWitnessClosed (O : SuperAdmittedObject) : Prop :=
  O.supercommutative

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse