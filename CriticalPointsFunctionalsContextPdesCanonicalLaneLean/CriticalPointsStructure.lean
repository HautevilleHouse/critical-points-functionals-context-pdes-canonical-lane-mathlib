import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure CriticalPointContext where
  manifold : Type u
  topology : TopologicalSpace manifold
  functional : (manifold → ℝ) → ℝ
  gradient : Type v
  hessian : Type w
  smoothFunctional : Prop
  compactSublevelSets : Prop
  palaisSmaleCondition : Prop

structure CriticalPointContextEvidence (C : CriticalPointContext) where
  smoothFunctionalClosed : C.smoothFunctional
  compactSublevelSetsClosed : C.compactSublevelSets
  palaisSmaleConditionClosed : C.palaisSmaleCondition

def CriticalPointContextClosed (C : CriticalPointContext) : Prop :=
  C.smoothFunctional ∧ C.compactSublevelSets ∧ C.palaisSmaleCondition

theorem critical_point_context_closed_from_evidence (C : CriticalPointContext) (E : CriticalPointContextEvidence C) :
    CriticalPointContextClosed C := by
  exact And.intro E.smoothFunctionalClosed (And.intro E.compactSublevelSetsClosed E.palaisSmaleConditionClosed)

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse