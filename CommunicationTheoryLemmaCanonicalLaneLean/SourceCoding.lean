import CommunicationTheoryLemmaCanonicalLaneLean.Entropy

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure SourceCodingPackage {A : AdmissibleClass} (E : EntropyPackage A) where
  sourceAlphabet : Type u
  sourceDistribution : sourceAlphabet → ℝ
  expectedLength : Prop
  optimalCoding : Prop
  compressionBound : Prop

structure SourceCodingEvidence {A : AdmissibleClass} {E : EntropyPackage A} (S : SourceCodingPackage E) where
  expectedLengthClosed : S.expectedLength
  optimalCodingClosed : S.optimalCoding
  compressionBoundClosed : S.compressionBound

def SourceCodingClosed {A : AdmissibleClass} {E : EntropyPackage A} (S : SourceCodingPackage E) : Prop :=
  S.expectedLength ∧ S.optimalCoding ∧ S.compressionBound

theorem source_coding_closed_from_evidence {A : AdmissibleClass} {E : EntropyPackage A} (S : SourceCodingPackage E) (Ev : SourceCodingEvidence S) : SourceCodingClosed S :=
  And.intro Ev.expectedLengthClosed (And.intro Ev.optimalCodingClosed Ev.compressionBoundClosed)

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse
