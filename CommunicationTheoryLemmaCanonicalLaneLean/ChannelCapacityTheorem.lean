import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure ChannelModel where
  inputAlphabet : Type u
  outputAlphabet : Type v
  transitionMatrix : inputAlphabet → outputAlphabet → ℝ

structure ChannelCapacityPackage (Ch : ChannelModel) where
  mutualInformation : Ch.inputAlphabet → Ch.outputAlphabet → ℝ
  capacity : ℝ
  capacityAchievability : Prop

structure ChannelCapacityEvidence {Ch : ChannelModel} (C : ChannelCapacityPackage Ch) where
  capacityFormula : C.capacity = 0.0
  capacityAchievabilityClosed : C.capacityAchievability

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse