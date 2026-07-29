import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure GaussianChannelPackage where
  inputPower : ℝ
  noiseVariance : ℝ
  bandwidth : ℝ
  capacityFormula : Prop
  capacity : Prop
  capacityPositive : Prop

structure GaussianChannelEvidence (G : GaussianChannelPackage) where
  capacityFormulaClosed : G.capacityFormula
  capacityClosed : G.capacity
  capacityPositiveClosed : G.capacityPositive

def GaussianChannelClosed (G : GaussianChannelPackage) : Prop :=
  G.capacityFormula ∧ G.capacity ∧ G.capacityPositive

theorem gaussian_channel_closed_from_evidence (G : GaussianChannelPackage) (E : GaussianChannelEvidence G) : GaussianChannelClosed G := by
  exact And.intro E.capacityFormulaClosed (And.intro E.capacityClosed E.capacityPositiveClosed)

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse