import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure CommunicationAdmittedObject where
  channelCapacityClosed : Prop
  sourceCodingClosed : Prop
  conclusion : channelCapacityClosed ∧ sourceCodingClosed

structure CommunicationEndgameState where
  object : CommunicationAdmittedObject

def CommunicationWitnessClosed (O : CommunicationAdmittedObject) : Prop :=
  O.channelCapacityClosed ∧ O.sourceCodingClosed

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
