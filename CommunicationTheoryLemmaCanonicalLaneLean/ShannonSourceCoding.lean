import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure SourceSymbolProbability where
  symbol : Type u
  probability : symbol → ℝ
  sumToOne : (Finset.sum (Finset.univ : Finset symbol) probability) = 1

structure EntropyDefinition (source : SourceSymbolProbability) where
  entropyValue : ℝ
  entropyFormula : entropyValue = -(Finset.sum (Finset.univ : Finset source.symbol) (λ s : source.symbol => source.probability s * Real.log (source.probability s)))

structure CompressionCode where
  codeLength : Nat
  averageLength : ℝ
  isOptimal : averageLength ≥ 0

structure SourceCodingEvidence (source : SourceSymbolProbability) (entropy : EntropyDefinition source) (code : CompressionCode) where
  entropyValuePositive : entropy.entropyValue ≥ 0
  averageLengthAtLeastEntropy : code.averageLength ≥ entropy.entropyValue
  codeOptimal : code.isOptimal

def SourceCodingClosed (source : SourceSymbolProbability) (entropy : EntropyDefinition source) (code : CompressionCode) : Prop :=
  entropy.entropyValue ≥ 0 ∧ code.averageLength ≥ entropy.entropyValue ∧ code.isOptimal

theorem source_coding_closed_from_evidence (source : SourceSymbolProbability) (entropy : EntropyDefinition source) (code : CompressionCode) (ev : SourceCodingEvidence source entropy code) : SourceCodingClosed source entropy code := by
  exact And.intro ev.entropyValuePositive (And.intro ev.averageLengthAtLeastEntropy ev.codeOptimal)

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
