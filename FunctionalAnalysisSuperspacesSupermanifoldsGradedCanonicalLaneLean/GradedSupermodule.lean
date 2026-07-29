import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure GradedSupermodulePackage (G : GradingPackage) (A : GradedAlgebraPackage G) where
  moduleStructure : Type u
  gradingCompatible : Prop
  action : Type v
  distributivity : Prop
  homogeneity : Prop

structure GradedSupermoduleEvidence {G : GradingPackage} {A : GradedAlgebraPackage G} (M : GradedSupermodulePackage G A) where
  gradingCompatibleClosed : M.gradingCompatible
  distributivityClosed : M.distributivity
  homogeneityClosed : M.homogeneity

def GradedSupermoduleClosed {G : GradingPackage} {A : GradedAlgebraPackage G} (M : GradedSupermodulePackage G A) : Prop :=
  M.gradingCompatible ∧ M.distributivity ∧ M.homogeneity

theorem graded_supermodule_closed_from_evidence
    {G : GradingPackage} {A : GradedAlgebraPackage G} (M : GradedSupermodulePackage G A) (E : GradedSupermoduleEvidence M) :
    GradedSupermoduleClosed M := by
  exact And.intro E.gradingCompatibleClosed (And.intro E.distributivityClosed E.homogeneityClosed)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse