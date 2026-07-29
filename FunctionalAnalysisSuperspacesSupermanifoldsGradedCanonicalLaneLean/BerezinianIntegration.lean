import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure BerezinianIntegrationPackage (G : GradingPackage) (S : SupermanifoldStructurePackage G) where
  berezinianBundle : Type u
  integralMap : Type v
  transformationLaw : Prop
  stokesTheorem : Prop
  volumeForm : Prop

structure BerezinianIntegrationEvidence {G : GradingPackage} {S : SupermanifoldStructurePackage G} (B : BerezinianIntegrationPackage G S) where
  transformationLawClosed : B.transformationLaw
  stokesTheoremClosed : B.stokesTheorem
  volumeFormClosed : B.volumeForm

def BerezinianIntegrationClosed {G : GradingPackage} {S : SupermanifoldStructurePackage G} (B : BerezinianIntegrationPackage G S) : Prop :=
  B.transformationLaw ∧ B.stokesTheorem ∧ B.volumeForm

theorem berezinian_integration_closed_from_evidence
    {G : GradingPackage} {S : SupermanifoldStructurePackage G} (B : BerezinianIntegrationPackage G S) (E : BerezinianIntegrationEvidence B) :
    BerezinianIntegrationClosed B := by
  exact And.intro E.transformationLawClosed (And.intro E.stokesTheoremClosed E.volumeFormClosed)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse