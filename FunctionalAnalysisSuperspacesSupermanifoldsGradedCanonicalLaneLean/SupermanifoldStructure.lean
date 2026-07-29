import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure SupermanifoldStructurePackage (G : GradingPackage) where
  manifold : Type u
  sheafOfSuperalgebras : Type v
  localModelIsSuperspace : Prop
  transitionFunctionsSmooth : Prop
  hausdorffSecondCountable : Prop

structure SupermanifoldStructureEvidence {G : GradingPackage} (S : SupermanifoldStructurePackage G) where
  localModelIsSuperspaceClosed : S.localModelIsSuperspace
  transitionFunctionsSmoothClosed : S.transitionFunctionsSmooth
  hausdorffSecondCountableClosed : S.hausdorffSecondCountable

def SupermanifoldStructureClosed {G : GradingPackage} (S : SupermanifoldStructurePackage G) : Prop :=
  S.localModelIsSuperspace ∧ S.transitionFunctionsSmooth ∧ S.hausdorffSecondCountable

theorem supermanifold_structure_closed_from_evidence
    {G : GradingPackage} (S : SupermanifoldStructurePackage G) (E : SupermanifoldStructureEvidence S) :
    SupermanifoldStructureClosed S := by
  exact And.intro E.localModelIsSuperspaceClosed (And.intro E.transitionFunctionsSmoothClosed E.hausdorffSecondCountableClosed)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse