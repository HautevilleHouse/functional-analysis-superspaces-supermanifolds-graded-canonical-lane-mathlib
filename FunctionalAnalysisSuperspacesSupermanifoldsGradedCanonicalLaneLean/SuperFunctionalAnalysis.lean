import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure SuperFunctionalAnalysisPackage (G : GradingPackage) (M : GradedSupermodulePackage G A) (A : GradedAlgebraPackage G) where
  superHilbertSpace : Prop
  superBanachSpace : Prop
  boundedOperators : Type u
  spectralTheorem : Prop
  functionalCalculus : Prop

structure SuperFunctionalAnalysisEvidence {G : GradingPackage} {A : GradedAlgebraPackage G} {M : GradedSupermodulePackage G A} (F : SuperFunctionalAnalysisPackage G M A) where
  superHilbertSpaceClosed : F.superHilbertSpace
  superBanachSpaceClosed : F.superBanachSpace
  spectralTheoremClosed : F.spectralTheorem
  functionalCalculusClosed : F.functionalCalculus

def SuperFunctionalAnalysisClosed {G : GradingPackage} {A : GradedAlgebraPackage G} {M : GradedSupermodulePackage G A} (F : SuperFunctionalAnalysisPackage G M A) : Prop :=
  F.superHilbertSpace ∧ F.superBanachSpace ∧ F.spectralTheorem ∧ F.functionalCalculus

theorem super_functional_analysis_closed_from_evidence
    {G : GradingPackage} {A : GradedAlgebraPackage G} {M : GradedSupermodulePackage G A} (F : SuperFunctionalAnalysisPackage G M A) (E : SuperFunctionalAnalysisEvidence F) :
    SuperFunctionalAnalysisClosed F := by
  exact And.intro E.superHilbertSpaceClosed (And.intro E.superBanachSpaceClosed (And.intro E.spectralTheoremClosed E.functionalCalculusClosed))

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse