import criticalPointsFunctionalsContextPdesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CriticalPointsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse
