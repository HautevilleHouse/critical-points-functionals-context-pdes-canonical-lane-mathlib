import criticalPointsFunctionalsContextPdesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CriticalPointsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure CriticalPointsAdmittedObject where
  space : CriticalPointsSpace
  functionalClass : Type
  pdeConstraint : Prop
  criticalPointSet : Set (space.carrier)
  functionalValue : ℝ
  conclusion : pdeConstraint ∧ (criticalPointSet.Nonempty → functionalValue = 0)

def CriticalPointsWitnessClosed (O : CriticalPointsAdmittedObject) : Prop :=
  O.conclusion

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse
