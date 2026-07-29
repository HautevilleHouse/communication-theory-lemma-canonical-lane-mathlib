import CommunicationTheoryLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CommunicationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CommunicationAdmittedObject where
  space : CommunicationSpace
  channelModel : Prop
  capacityAchievable : Prop
  informationBound : Type
  informationTopology : TopologicalSpace informationBound
  capacityAchievesBound : Prop
  conclusion : capacityAchievesBound

structure CommunicationEndgameState where
  object : CommunicationAdmittedObject

def CommunicationWitnessClosed (O : CommunicationAdmittedObject) : Prop :=
  O.capacityAchievesBound

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse