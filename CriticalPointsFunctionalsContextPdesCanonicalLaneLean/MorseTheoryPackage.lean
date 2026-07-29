import canonicalLaneMathlib.AdmissibleClass
import CriticalPointsFunctionalsContextPdesCanonicalLaneLean.CriticalPointsStructure

namespace HautevilleHouse
namespace CriticalPointsFunctionalsContextPdesCanonicalLaneLean

structure MorseTheoryPackage {C : CriticalPointContext} where
  nondegenerateCriticalPoints : Prop
  morseIndexDefined : Prop
  handleDecomposition : Prop
  morseInequalities : Prop

structure MorseTheoryEvidence {C : CriticalPointContext} (M : MorseTheoryPackage C) where
  nondegenerateCriticalPointsClosed : M.nondegenerateCriticalPoints
  morseIndexDefinedClosed : M.morseIndexDefined
  handleDecompositionClosed : M.handleDecomposition
  morseInequalitiesClosed : M.morseInequalities

def MorseTheoryClosed {C : CriticalPointContext} (M : MorseTheoryPackage C) : Prop :=
  M.nondegenerateCriticalPoints ∧ M.morseIndexDefined ∧ M.handleDecomposition ∧ M.morseInequalities

theorem morse_theory_closed_from_evidence {C : CriticalPointContext} (M : MorseTheoryPackage C) (E : MorseTheoryEvidence M) :
    MorseTheoryClosed M := by
  exact And.intro E.nondegenerateCriticalPointsClosed
    (And.intro E.morseIndexDefinedClosed
      (And.intro E.handleDecompositionClosed E.morseInequalitiesClosed))

end CriticalPointsFunctionalsContextPdesCanonicalLaneLean
end HautevilleHouse