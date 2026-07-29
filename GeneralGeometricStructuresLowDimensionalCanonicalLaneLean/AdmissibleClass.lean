import HautevilleHouse.GeneralGeometricStructuresLowDimensionalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

structure AdmissibleClass where
  object : GeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse