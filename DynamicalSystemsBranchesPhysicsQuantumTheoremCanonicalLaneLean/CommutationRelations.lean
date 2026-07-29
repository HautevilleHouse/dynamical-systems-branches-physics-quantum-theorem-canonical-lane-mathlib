import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

-- Canonical commutation relations
structure CommutationRelation (H : Type) [InnerProductSpace ℂ H] where
  P : SelfAdjointOperator H
  Q : SelfAdjointOperator H
  commutation : P.operator * Q.operator - Q.operator * P.operator = -ⅈ * id H
  domainDense : Dense (Domain P) ∧ Dense (Domain Q)

define CCRClosed (C : CommutationRelation H) [InnerProductSpace ℂ H] : Prop :=
  C.commutation ∧ C.domainDense.1 ∧ C.domainDense.2

theorem ccrs_bridge (C : CommutationRelation H) [InnerProductSpace ℂ H] : CCRClosed C := by
  refine ⟨C.commutation, ?_, ?_⟩
  · exact C.domainDense.1
  · exact C.domainDense.2

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse