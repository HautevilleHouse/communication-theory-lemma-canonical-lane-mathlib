import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommunicationTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CommunicationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
