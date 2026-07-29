import canonicalLaneMathlib.AdmissibleClass
import CriticalPointsFunctionalsContextPdesCanonicalLaneLean.CriticalPointsStructure

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure PDEConstraintPackage {C : CriticalPointContext} where
  pdeSystem : Type u
  weakSolutionSpace : Type v
  functionalConstraint : (C.functional : Prop)
  eulerLagrangeEquation : Prop
  regularityOfSolutions : Prop

structure PDEConstraintEvidence {C : CriticalPointContext} (P : PDEConstraintPackage C) where
  functionalConstraintClosed : P.functionalConstraint
  eulerLagrangeEquationClosed : P.eulerLagrangeEquation
  regularityOfSolutionsClosed : P.regularityOfSolutions

def PDEConstraintClosed {C : CriticalPointContext} (P : PDEConstraintPackage C) : Prop :=
  P.functionalConstraint ∧ P.eulerLagrangeEquation ∧ P.regularityOfSolutions

theorem pde_constraint_closed_from_evidence {C : CriticalPointContext} (P : PDEConstraintPackage C) (E : PDEConstraintEvidence P) :
    PDEConstraintClosed P := by
  exact And.intro E.functionalConstraintClosed (And.intro E.eulerLagrangeEquationClosed E.regularityOfSolutionsClosed)

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse