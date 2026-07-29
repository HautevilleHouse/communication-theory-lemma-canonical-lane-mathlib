import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommunicationTheoryLemmaCanonicalLaneLean.ChannelCoddingLemma
import HautevilleHouse.CommunicationTheoryLemmaCanonicalLaneLean.ShannonSourceCoding

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

def ConstrainedCommunicationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_communication_endgame (A : AdmissibleClass) : ConstrainedCommunicationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
