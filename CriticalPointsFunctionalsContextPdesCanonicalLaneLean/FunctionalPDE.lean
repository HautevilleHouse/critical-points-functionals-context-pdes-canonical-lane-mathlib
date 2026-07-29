import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure FunctionalPDE where
  domain : Type
  topology : TopologicalSpace domain
  functionSpace : Type
  equation : functionSpace → Prop
  solution : functionSpace
  equationHolds : equation solution

def FunctionalPDEClosed (F : FunctionalPDE) : Prop :=
  F.equationHolds

structure FunctionalPDEContext where
  criticalPointObject : CriticalPointObject
  functionalPDE : FunctionalPDE
  compatibilityCondition : Prop
  compatibilityProof : compatibilityCondition

def FunctionalPDEContextClosed (C : FunctionalPDEContext) : Prop :=
  CriticalPointObjectClosed C.criticalPointObject ∧
  FunctionalPDEClosed C.functionalPDE ∧
  C.compatibilityCondition

theorem functional_pde_context_closed (C : FunctionalPDEContext) :
    FunctionalPDEContextClosed C := by
  refine And.intro (by exact C.criticalPointObject.conclusion) (And.intro (by exact C.functionalPDE.equationHolds) C.compatibilityProof)

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse