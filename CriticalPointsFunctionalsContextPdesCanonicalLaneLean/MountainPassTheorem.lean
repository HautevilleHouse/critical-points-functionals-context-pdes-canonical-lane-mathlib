import canonicalLaneMathlib.AdmissibleClass
import CriticalPointsFunctionalsContextPdesCanonicalLaneLean.CriticalPointsStructure

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure MountainPassPackage {C : CriticalPointContext} where
  twoEndpoints : Prop
  linkingCondition : Prop
  mountainPassGeometry : Prop
  criticalValueExists : Prop

structure MountainPassEvidence {C : CriticalPointContext} (M : MountainPassPackage C) where
  twoEndpointsClosed : M.twoEndpoints
  linkingConditionClosed : M.linkingCondition
  mountainPassGeometryClosed : M.mountainPassGeometry
  criticalValueExistsClosed : M.criticalValueExists

def MountainPassClosed {C : CriticalPointContext} (M : MountainPassPackage C) : Prop :=
  M.twoEndpoints ∧ M.linkingCondition ∧ M.mountainPassGeometry ∧ M.criticalValueExists

theorem mountain_pass_closed_from_evidence {C : CriticalPointContext} (M : MountainPassPackage C) (E : MountainPassEvidence M) :
    MountainPassClosed M := by
  exact And.intro E.twoEndpointsClosed
    (And.intro E.linkingConditionClosed
      (And.intro E.mountainPassGeometryClosed E.criticalValueExistsClosed))

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse