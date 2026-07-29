import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralGeometricStructuresLowDimensionalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleGeneticsObject where
  object : PoincareAdmittedObject
  geneticsData : Prop
  geneticsDataClosed : geneticsData

structure AdmissibleClassGenetics where
  geneticsObject : AdmissibleGeneticsObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosedGenetics (A : AdmissibleClassGenetics) : Prop :=
  PoincareWitnessClosed A.geneticsObject.object

def gateClosedGenetics (A : AdmissibleClassGenetics) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class_genetics (A : AdmissibleClassGenetics) : bridgeClosedGenetics A :=
  A.geneticsObject.object.conclusion

theorem gate_from_admissible_class_genetics (A : AdmissibleClassGenetics) : gateClosedGenetics A :=
  A.gateWitness

def ConstrainedGeneticsClosure (A : AdmissibleClassGenetics) : Prop :=
  bridgeClosedGenetics A ∧ gateClosedGenetics A

theorem constrained_genetics_endgame (A : AdmissibleClassGenetics) : ConstrainedGeneticsClosure A :=
  And.intro (bridge_from_admissible_class_genetics A) (gate_from_admissible_class_genetics A)

end GeneralGeometricStructuresLowDimensionalCanonicalLaneLean
end HautevilleHouse