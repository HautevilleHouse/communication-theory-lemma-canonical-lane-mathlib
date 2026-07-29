import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure MultipleAccessChannel where
  inputAlphabet1 : Type u
  inputAlphabet2 : Type v
  outputAlphabet : Type w
  transitionMatrix : inputAlphabet1 → inputAlphabet2 → outputAlphabet → ℝ

structure MultipleAccessCapacityRegion (M : MultipleAccessChannel) where
  rateRegion : Set (ℝ × ℝ)
  innerBound : Set (ℝ × ℝ)
  outerBound : Set (ℝ × ℝ)
  capacityRegionAchievability : Prop

structure MultipleAccessChannelEvidence {M : MultipleAccessChannel} (C : MultipleAccessCapacityRegion M) where
  regionClosed : C.innerBound = C.rateRegion ∧ C.outerBound = C.rateRegion
  capacityRegionAchievabilityClosed : C.capacityRegionAchievability

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse