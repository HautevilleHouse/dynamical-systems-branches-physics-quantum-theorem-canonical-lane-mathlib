import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

structure HilbertSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℂ
  completeness : Prop

structure Observable where
  domain : HilbertSpace
  operator : domain.carrier → domain.carrier
  selfAdjoint : ∀ x y, innerProduct (operator x) y = innerProduct x (operator y)

structure QuantumState where
  space : HilbertSpace
  vector : space.carrier
  normalized : innerProduct vector vector = 1

def spectralDecomposition (O : Observable) : Prop :=
  ∀ x : O.domain.carrier, ∃ (λ : ℂ) (e : O.domain.carrier), O.operator x = λ • e

def CommutationRelation (A B : Observable) : Prop :=
  ∀ x : A.domain.carrier, A.operator (B.operator x) = B.operator (A.operator x)

theorem heisenberg_uncertainty (A B : Observable) (ψ : QuantumState) :
  (spectralDecomposition A ∧ CommutationRelation A B) → False := by
  intro h
  exact False.elim (by
    have : CommutationRelation A B := h.2
    sorry)

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse
