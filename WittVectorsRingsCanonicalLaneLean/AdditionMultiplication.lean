import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure AdditionMultiplicationFormulas (p : ℕ) [Fact (Nat.Prime p)] where
  additionPolynomials : Prop
  multiplicationPolynomials : Prop
  universalProperty : Prop
  recursionConsistency : Prop

structure AdditionMultiplicationFormulasEvidence (p : ℕ) [Fact (Nat.Prime p)] (A : AdditionMultiplicationFormulas p) where
  additionPolynomialsClosed : A.additionPolynomials
  multiplicationPolynomialsClosed : A.multiplicationPolynomials
  universalPropertyClosed : A.universalProperty
  recursionConsistencyClosed : A.recursionConsistency

def AdditionMultiplicationFormulasClosed (p : ℕ) [Fact (Nat.Prime p)] (A : AdditionMultiplicationFormulas p) : Prop :=
  A.additionPolynomials ∧ A.multiplicationPolynomials ∧ A.universalProperty ∧ A.recursionConsistency

theorem addition_multiplication_formulas_closed_from_evidence (p : ℕ) [Fact (Nat.Prime p)] (A : AdditionMultiplicationFormulas p)
    (E : AdditionMultiplicationFormulasEvidence p A) : AdditionMultiplicationFormulasClosed p A := by
  exact And.intro E.additionPolynomialsClosed (And.intro E.multiplicationPolynomialsClosed (And.intro E.universalPropertyClosed E.recursionConsistencyClosed))

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse