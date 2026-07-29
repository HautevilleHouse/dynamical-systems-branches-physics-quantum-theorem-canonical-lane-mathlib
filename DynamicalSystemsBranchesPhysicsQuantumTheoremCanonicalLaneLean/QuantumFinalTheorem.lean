import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean.QuantumBridgeLemmas
import DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean.QuantumGateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

def ConstrainedQuantumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_quantum_closure (A : AdmissibleClass) :
    ConstrainedQuantumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse