import CommunicationTheoryLemmaCanonicalLaneLean.ChannelCapacity

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure EntropyPackage (A : AdmissibleClass) where
  alphabet : Type u
  distribution : alphabet → ℝ
  entropyFunction : Prop
  jointEntropy : Prop
  conditionalEntropy : Prop
  mutualInformation : Prop

structure EntropyEvidence {A : AdmissibleClass} (E : EntropyPackage A) where
  entropyFunctionClosed : E.entropyFunction
  jointEntropyClosed : E.jointEntropy
  conditionalEntropyClosed : E.conditionalEntropy
  mutualInformationClosed : E.mutualInformation

def EntropyClosed {A : AdmissibleClass} (E : EntropyPackage A) : Prop :=
  E.entropyFunction ∧ E.jointEntropy ∧ E.conditionalEntropy ∧ E.mutualInformation

theorem entropy_closed_from_evidence {A : AdmissibleClass} (E : EntropyPackage A) (Ev : EntropyEvidence E) : EntropyClosed E :=
  And.intro Ev.entropyFunctionClosed (And.intro Ev.jointEntropyClosed (And.intro Ev.conditionalEntropyClosed Ev.mutualInformationClosed))

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
