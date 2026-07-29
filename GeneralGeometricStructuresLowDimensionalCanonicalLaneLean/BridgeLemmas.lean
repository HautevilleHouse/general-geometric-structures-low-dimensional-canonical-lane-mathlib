import HautevilleHouse.GeneralGeometricStructuresLowDimensionalCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse