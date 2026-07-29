import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

structure SequenceAlignmentPackage where
  scoringScheme : Prop
  alignmentAlgorithm : Prop
  optimalAlignment : Prop
  similarityMeasure : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringSchemeClosed : S.scoringScheme
  alignmentAlgorithmClosed : S.alignmentAlgorithm
  optimalAlignmentClosed : S.optimalAlignment
  similarityMeasureClosed : S.similarityMeasure

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringScheme ∧ S.alignmentAlgorithm ∧ S.optimalAlignment ∧ S.similarityMeasure

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S :=
  And.intro E.scoringSchemeClosed (And.intro E.alignmentAlgorithmClosed (And.intro E.optimalAlignmentClosed E.similarityMeasureClosed))

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse