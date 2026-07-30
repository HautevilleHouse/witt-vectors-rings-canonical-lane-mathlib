import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittPolynomial (p : Nat) [Fact (Nat.Prime p)] where
  variableCount : Nat
  polynomial : ℕ → ℤ → ℤ
  ghostComponents : ℕ → ℤ
  wittPolynomialDef : (n : ℕ) → polynomial n = ∑_{i=0}^{n} p^i * (variable_i)^{p^{n-i}}
  ghostComponentsDef : (n : ℕ) → ghostComponents n = (variable_n)^(p^n)
  polynomialClosed : Prop
  polynomialClosedTerm : polynomialClosed

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse