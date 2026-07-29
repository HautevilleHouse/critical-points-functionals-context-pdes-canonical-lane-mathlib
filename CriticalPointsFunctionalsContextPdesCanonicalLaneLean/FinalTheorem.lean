import criticalPointsFunctionalsContextPdesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

def ConstrainedCriticalPointsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_critical_points_endgame (A : AdmissibleClass) :
    ConstrainedCriticalPointsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse
