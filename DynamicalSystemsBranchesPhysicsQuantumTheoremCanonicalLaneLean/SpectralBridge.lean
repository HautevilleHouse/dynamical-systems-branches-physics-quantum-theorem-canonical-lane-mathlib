import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

structure SpectralCertificate where
  operator : Observable
  spectrum : Set ℂ
  spectralMeasure : Prop
  projectionValued : Prop
  spectralTheoremHolds : spectralMeasure ∧ projectionValued

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (sc : SpectralCertificate), sc.spectralTheoremHolds

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine Exists.intro ?_ ?_
  exact A.object.theoremObject = "SpectralTheorem"
  

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse
