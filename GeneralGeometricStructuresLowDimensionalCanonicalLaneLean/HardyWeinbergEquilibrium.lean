import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  alleleFrequencies : Nat -> Prop
  genotypeFrequencies : Nat -> Prop
  randomMating : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  randomMatingClosed : H.randomMating
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.alleleFrequencies ∧ H.genotypeFrequencies ∧ H.randomMating ∧ H.equilibriumCondition

theorem hardy_weinberg_equilibrium_closed_from_evidence (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H :=
  And.intro E.alleleFrequenciesClosed (And.intro E.genotypeFrequenciesClosed (And.intro E.randomMatingClosed E.equilibriumConditionClosed))

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse