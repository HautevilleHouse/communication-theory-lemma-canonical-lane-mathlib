import CommunicationTheoryLemmaCanonicalLaneLean.SourceCoding

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure RateDistortionPackage {A : AdmissibleClass} {E : EntropyPackage A} (S : SourceCodingPackage E) where
  distortionMeasure : A.object → A.object → ℝ
  rateDistortionFunction : ℝ → ℝ
  achievable : ℝ → Prop
  optimalTradeoff : Prop

structure RateDistortionEvidence {A : AdmissibleClass} {E : EntropyPackage A} {S : SourceCodingPackage E} (R : RateDistortionPackage S) where
  optimalTradeoffClosed : R.optimalTradeoff

def RateDistortionClosed {A : AdmissibleClass} {E : EntropyPackage A} {S : SourceCodingPackage E} (R : RateDistortionPackage S) : Prop :=
  R.optimalTradeoff

theorem rate_distortion_closed_from_evidence {A : AdmissibleClass} {E : EntropyPackage A} {S : SourceCodingPackage E} (R : RateDistortionPackage S) (Ev : RateDistortionEvidence R) : RateDistortionClosed R :=
  Ev.optimalTradeoffClosed

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
