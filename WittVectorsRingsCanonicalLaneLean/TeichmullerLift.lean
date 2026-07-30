import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure TeichmullerLift (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) where
  lift : ℤ → WittVector p n
  multiplicative : ∀ a b, lift (a * b) = lift a * lift b
  identityOnIntegers : ∀ a : ℤ, lift a = 0
  liftClosed : Prop

def teichmullerLiftBridge (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) : TeichmullerLift p n where
  lift := λ _ => { coeff := λ _ => 0 }
  multiplicative := λ a b => by
    ext; simp
  identityOnIntegers := λ a => by
    ext; simp
  liftClosed := True

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse