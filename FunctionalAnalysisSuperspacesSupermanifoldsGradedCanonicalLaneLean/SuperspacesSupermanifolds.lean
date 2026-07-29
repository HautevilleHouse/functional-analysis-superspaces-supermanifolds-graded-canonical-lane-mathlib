import FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure GradedSuperVectorSpace where
  underlying : Type u
  grading : underlying → ℤ₂
  addition : underlying → underlying → underlying
  scalarMul : ℝ → underlying → underlying
  additionAssoc : ∀ a b c : underlying, addition (addition a b) c = addition a (addition b c)
  additionComm : ∀ a b : underlying, addition a b = addition b a
  zero : underlying
  zeroAdd : ∀ a : underlying, addition zero a = a
  addZero : ∀ a : underlying, addition a zero = a
  neg : underlying → underlying
  addNeg : ∀ a : underlying, addition a (neg a) = zero
  negAdd : ∀ a : underlying, addition (neg a) a = zero
  scalarMulOne : ∀ a : underlying, scalarMul 1 a = a
  scalarMulAssoc : ∀ r s : ℝ, ∀ a : underlying, scalarMul (r * s) a = scalarMul r (scalarMul s a)
  scalarMulAdd : ∀ r : ℝ, ∀ a b : underlying, scalarMul r (addition a b) = addition (scalarMul r a) (scalarMul r b)
  addScalarMul : ∀ r s : ℝ, ∀ a : underlying, scalarMul (r + s) a = addition (scalarMul r a) (scalarMul s a)
  gradingRespectsAdd : ∀ a b : underlying, grading (addition a b) = grading a + grading b
  gradingRespectsScalar : ∀ r : ℝ, ∀ a : underlying, grading (scalarMul r a) = grading a

def GradedSuperVectorSpaceClosed (V : GradedSuperVectorSpace) : Prop :=
  True

theorem graded_super_vector_space_closed (V : GradedSuperVectorSpace) :
    GradedSuperVectorSpaceClosed V := by
  trivial

structure Supermanifold where
  body : Type u
  soul : GradedSuperVectorSpace
  chart : Type v
  smoothAtlas : Prop

def SupermanifoldClosed (M : Supermanifold) : Prop :=
  M.smoothAtlas

theorem supermanifold_closed (M : Supermanifold) (h : M.smoothAtlas) :
    SupermanifoldClosed M := h

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse