import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure CriticalPointObject where
  space : Type
  topology : TopologicalSpace space
  functional : space → ℝ
  criticalPoint : space
  pointIsCritical : Prop
  conclusion : pointIsCritical

def CriticalPointObjectClosed (O : CriticalPointObject) : Prop :=
  O.pointIsCritical

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse