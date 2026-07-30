import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

def ConstrainedWittClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_witt_endgame (A : AdmissibleClass) :
    ConstrainedWittClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse