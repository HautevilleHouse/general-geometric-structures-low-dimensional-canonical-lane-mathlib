import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

structure LinkageAnalysisPackage where
  locusPair : Prop
  recombinationFrequency : Prop
  lodScore : Prop
  linkageStatus : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  locusPairClosed : L.locusPair
  recombinationFrequencyClosed : L.recombinationFrequency
  lodScoreClosed : L.lodScore
  linkageStatusClosed : L.linkageStatus

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.locusPair ∧ L.recombinationFrequency ∧ L.lodScore ∧ L.linkageStatus

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L :=
  And.intro E.locusPairClosed (And.intro E.recombinationFrequencyClosed (And.intro E.lodScoreClosed E.linkageStatusClosed))

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse