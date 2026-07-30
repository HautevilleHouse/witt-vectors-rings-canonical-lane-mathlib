import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittVector (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) where
  coeff : ℕ → ℤ

structure WittVectorOperations (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) where
  add : WittVector p n → WittVector p n → WittVector p n
  mul : WittVector p n → WittVector p n → WittVector p n
  add_comm : ∀ a b, add a b = add b a
  add_assoc : ∀ a b c, add (add a b) c = add a (add b c)
  mul_comm : ∀ a b, mul a b = mul b a
  mul_assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c)

def wittVectorRing (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) : Type := WittVector p n

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse