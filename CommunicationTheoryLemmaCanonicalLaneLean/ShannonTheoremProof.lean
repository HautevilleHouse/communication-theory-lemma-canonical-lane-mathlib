import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

def ShannonChannelCodingClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem shannon_channel_coding_endgame (A : AdmissibleClass) :
    ShannonChannelCodingClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse