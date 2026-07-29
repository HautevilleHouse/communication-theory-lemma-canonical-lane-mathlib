import CommunicationTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure ChannelPackage (A : AdmissibleClass) where
  inputAlphabet : Type u
  outputAlphabet : Type v
  transitionMatrix : inputAlphabet → outputAlphabet → ℝ
  capacityDefined : Prop
  capacityValue : ℝ
  capacityAchievability : Prop

structure ChannelEvidence {A : AdmissibleClass} (C : ChannelPackage A) where
  capacityDefinedClosed : C.capacityDefined
  capacityAchievabilityClosed : C.capacityAchievability

def ChannelClosed {A : AdmissibleClass} (C : ChannelPackage A) : Prop :=
  C.capacityDefined ∧ C.capacityAchievability

theorem channel_closed_from_evidence {A : AdmissibleClass} (C : ChannelPackage A) (E : ChannelEvidence C) : ChannelClosed C :=
  And.intro E.capacityDefinedClosed E.capacityAchievabilityClosed

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
