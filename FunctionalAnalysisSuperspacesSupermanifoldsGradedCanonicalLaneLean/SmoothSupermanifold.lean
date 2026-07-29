import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure SmoothSupermanifoldPackage (G : GradingPackage) (S : SupermanifoldStructurePackage G) where
  smoothStructure : Prop
  compatibleWithSuperalgebra : Prop
  derivationModule : Type u
  deRhamDifferential : Type v
  poincareLemma : Prop

structure SmoothSupermanifoldEvidence {G : GradingPackage} {S : SupermanifoldStructurePackage G} (M : SmoothSupermanifoldPackage G S) where
  smoothStructureClosed : M.smoothStructure
  compatibleWithSuperalgebraClosed : M.compatibleWithSuperalgebra
  poincareLemmaClosed : M.poincareLemma

def SmoothSupermanifoldClosed {G : GradingPackage} {S : SupermanifoldStructurePackage G} (M : SmoothSupermanifoldPackage G S) : Prop :=
  M.smoothStructure ∧ M.compatibleWithSuperalgebra ∧ M.poincareLemma

theorem smooth_supermanifold_closed_from_evidence
    {G : GradingPackage} {S : SupermanifoldStructurePackage G} (M : SmoothSupermanifoldPackage G S) (E : SmoothSupermanifoldEvidence M) :
    SmoothSupermanifoldClosed M := by
  exact And.intro E.smoothStructureClosed (And.intro E.compatibleWithSuperalgebraClosed E.poincareLemmaClosed)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse