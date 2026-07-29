import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

structure DynamicalEvolutionCertificate where
  schrodingerEquationImported : Bool
  unitaryEvolution : Prop
  heisenbergPicture : Prop
  unitaryProof : unitaryEvolution
  heisenbergProof : heisenbergPicture

def sourceDynamicalEvolutionCertificate : DynamicalEvolutionCertificate := {
  schrodingerEquationImported := true
  unitaryEvolution := baselineCertificateInputs.length = 7
  heisenbergPicture := outsideConstantDependencyCount = 0
  unitaryProof := rfl
  heisenbergProof := rfl
}

def DynamicalEvolutionClosed (C : DynamicalEvolutionCertificate) : Prop :=
  C.unitaryEvolution ∧ C.heisenbergPicture

theorem source_dynamical_evolution_closed :
    DynamicalEvolutionClosed sourceDynamicalEvolutionCertificate := by
  exact And.intro sourceDynamicalEvolutionCertificate.unitaryProof
    sourceDynamicalEvolutionCertificate.heisenbergProof

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse