import canonicalLaneMathlib.AdmissibleClass
import CriticalPointsFunctionalsContextPdesCanonicalLaneLean.PDEConstraintPackage

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure BifurcationPackage {C : CriticalPointContext} {P : PDEConstraintPackage C} where
  parameterSpace : Type u
  branchOfSolutions : Prop
  bifurcationPoint : Prop
  lyapunovSchmidtReduction : Prop
  stabilityChange : Prop

structure BifurcationEvidence {C : CriticalPointContext} {P : PDEConstraintPackage C} (B : BifurcationPackage C P) where
  branchOfSolutionsClosed : B.branchOfSolutions
  bifurcationPointClosed : B.bifurcationPoint
  lyapunovSchmidtReductionClosed : B.lyapunovSchmidtReduction
  stabilityChangeClosed : B.stabilityChange

def BifurcationClosed {C : CriticalPointContext} {P : PDEConstraintPackage C} (B : BifurcationPackage C P) : Prop :=
  B.branchOfSolutions ∧ B.bifurcationPoint ∧ B.lyapunovSchmidtReduction ∧ B.stabilityChange

theorem bifurcation_closed_from_evidence {C : CriticalPointContext} {P : PDEConstraintPackage C} (B : BifurcationPackage C P) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact And.intro E.branchOfSolutionsClosed
    (And.intro E.bifurcationPointClosed
      (And.intro E.lyapunovSchmidtReductionClosed E.stabilityChangeClosed))

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse