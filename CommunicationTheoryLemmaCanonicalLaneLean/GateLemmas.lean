import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommunicationTheoryLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
