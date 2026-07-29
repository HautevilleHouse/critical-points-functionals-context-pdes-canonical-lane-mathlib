import criticalPointsFunctionalsContextPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

def criticalPointsProjection : Projection CriticalPointsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem critical_points_projection_idempotent (x : CriticalPointsEndgameState) :
    criticalPointsProjection.toFun (criticalPointsProjection.toFun x) = criticalPointsProjection.toFun x := by
  exact criticalPointsProjection.idempotent x

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse
