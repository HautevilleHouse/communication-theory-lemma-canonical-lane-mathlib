import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommunicationTheoryLemmaCanonicalLaneLean

structure SourceCodingPackage where
  sourceAlphabet : Type u
  probabilityDistribution : sourceAlphabet → ℝ
  codebook : List (List Bool)
  blockLength : ℕ
  entropy : ℝ
  compressionRate : ℝ

structure SourceCodingEvidence (S : SourceCodingPackage) where
  entropyComputed : S.entropy = 0.0
  compressionRateAchieved : S.compressionRate ≤ S.entropy

end CommunicationTheoryLemmaCanonicalLaneLean
end HautevilleHouse