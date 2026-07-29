import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

-- Mathematical definitions for quantum observables
structure SelfAdjointOperator (H : Type) [InnerProductSpace ℝ H] where
  operator : H → H
  selfAdjoint : ∀ x y : H, inner (operator x) y = inner x (operator y)

structure QuantumExpectation (H : Type) [InnerProductSpace ℝ H] where
  state : DensityMatrix H
  observable : SelfAdjointOperator H
  expectationValue : ℝ
  expectationFormula : expectationValue = trace (state.matrix * observable.operator)

define ExpectationClosed (E : QuantumExpectation H) [InnerProductSpace ℝ H] : Prop :=
  E.expectationValue = trace (E.state.matrix * E.observable.operator)

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse