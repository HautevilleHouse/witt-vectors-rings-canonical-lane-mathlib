import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure WittAddition (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) where
  addWitt : WittVector p n → WittVector p n → WittVector p n
  addWittProperties : ∀ a b c, addWitt a (addWitt b c) = addWitt (addWitt a b) c ∧ addWitt a b = addWitt b a
  addClosed : Prop

structure WittMultiplication (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) where
  mulWitt : WittVector p n → WittVector p n → WittVector p n
  mulWittProperties : ∀ a b c, mulWitt a (mulWitt b c) = mulWitt (mulWitt a b) c ∧ mulWitt a b = mulWitt b a
  mulClosed : Prop

def wittAdditionBridge (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) : WittAddition p n where
  addWitt := λ a b => { coeff := λ i => a.coeff i + b.coeff i }
  addWittProperties := λ a b c => ⟨by
    ext i
    simp [add_assoc]
  , by
    ext i
    simp [add_comm]
  ⟩
  addClosed := True

def wittMultiplicationBridge (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) : WittMultiplication p n where
  mulWitt := λ a b => { coeff := λ i => a.coeff i * b.coeff i }
  mulWittProperties := λ a b c => ⟨by
    ext i
    simp [mul_assoc]
  , by
    ext i
    simp [mul_comm]
  ⟩
  mulClosed := True

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse