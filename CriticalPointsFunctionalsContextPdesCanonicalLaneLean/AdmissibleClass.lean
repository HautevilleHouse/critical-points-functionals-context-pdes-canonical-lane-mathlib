import criticalPointsFunctionalsContextPdesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure AdmissibleClass where
  object : CriticalPointsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CriticalPointsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse
