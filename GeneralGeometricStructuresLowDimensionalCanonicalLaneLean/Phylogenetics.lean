import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

structure PhylogeneticsPackage where
  treeTopology : Prop
  branchLengths : Prop
  evolutionaryModel : Prop
  likelihoodFunction : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  evolutionaryModelClosed : P.evolutionaryModel
  likelihoodFunctionClosed : P.likelihoodFunction

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.evolutionaryModel ∧ P.likelihoodFunction

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P :=
  And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed (And.intro E.evolutionaryModelClosed E.likelihoodFunctionClosed))

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse