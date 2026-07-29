import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure ErrorCorrectingCodePackage where
  alphabet : Type u
  codebook : Type v
  blockLength : Nat
  rate : Prop
  minimumDistance : Prop
  errorProbability : Prop
  shannonLimit : Prop

structure ErrorCorrectingCodeEvidence (C : ErrorCorrectingCodePackage) where
  rateClosed : C.rate
  minimumDistanceClosed : C.minimumDistance
  errorProbabilityClosed : C.errorProbability
  shannonLimitClosed : C.shannonLimit

def ErrorCorrectingCodeClosed (C : ErrorCorrectingCodePackage) : Prop :=
  C.rate ∧ C.minimumDistance ∧ C.errorProbability ∧ C.shannonLimit

theorem error_correcting_code_closed_from_evidence (C : ErrorCorrectingCodePackage) (E : ErrorCorrectingCodeEvidence C) : ErrorCorrectingCodeClosed C := by
  exact And.intro E.rateClosed (And.intro E.minimumDistanceClosed (And.intro E.errorProbabilityClosed E.shannonLimitClosed))

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse