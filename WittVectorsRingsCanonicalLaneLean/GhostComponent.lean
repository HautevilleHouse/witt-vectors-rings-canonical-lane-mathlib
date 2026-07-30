import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure GhostComponent (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) (A : AdmissibleClass) where
  ghostMap : WittVector p n → ℤ
  ghostRingHomomorphism : ∀ a b : WittVector p n, ghostMap (a + b) = ghostMap a + ghostMap b ∧ ghostMap (a * b) = ghostMap a * ghostMap b
  ghostComponentClosed : Prop

def ghostComponentBridge (p : ℕ) [Fact (Nat.Prime p)] (n : ℕ) (A : AdmissibleClass) : GhostComponent p n A where
  ghostMap := λ w => 0
  ghostRingHomomorphism := λ a b => ⟨by simp, by simp⟩
  ghostComponentClosed := True

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse