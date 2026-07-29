import HautevilleHouse.GeneralGeometricStructuresLowDimensionalCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse