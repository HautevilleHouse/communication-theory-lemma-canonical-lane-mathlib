import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type u
  reproductionAlphabet : Type v
  distortionMeasure : sourceAlphabet → reproductionAlphabet → ℝ
  rateDistortionFunction : ℝ → ℝ
  operationalRateDistortion : ℝ → ℝ

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionFunctionConvex : ∀ d : ℝ, ConvexOn ℝ (Set.Ici 0) (R.rateDistortionFunction)
  operationalRateDistortionClosed : ∀ d : ℝ, R.operationalRateDistortion d = R.rateDistortionFunction d

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse