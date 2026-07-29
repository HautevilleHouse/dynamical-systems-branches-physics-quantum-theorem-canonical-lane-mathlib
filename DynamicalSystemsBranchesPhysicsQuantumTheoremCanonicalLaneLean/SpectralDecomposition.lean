import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean

-- Spectral theorem for compact self-adjoint operators
structure SpectralDecomposition (H : Type) [InnerProductSpace ℝ H] where
  operator : SelfAdjointOperator H
  eigenvalues : List ℝ
  eigenvectors : List H
  decomposition : ∀ v : H, operator.operator v = ∑ i in eigenvalues, eigenvalues[i] * inner (eigenvectors[i]) v * eigenvectors[i]

structure SpectralClosed (S : SpectralDecomposition H) [InnerProductSpace ℝ H] : Prop where
  eigenvaluesReal : ∀ λ ∈ S.eigenvalues, λ = λ.re
  eigenvectorsOrthonormal : OrthonormalSet ℝ H (Set.range S.eigenvectors)
  decompositionHolds : ∀ v : H, S.decomposition v

theorem spectral_closed_admissible (S : SpectralDecomposition H) [InnerProductSpace ℝ H] : SpectralClosed S := by
  constructor
  · intro λ hλ; simp
  · apply OrthonormalSet.mk
  · intro v; exact S.decomposition v

end DynamicalSystemsBranchesPhysicsQuantumTheoremCanonicalLaneLean
end HautevilleHouse