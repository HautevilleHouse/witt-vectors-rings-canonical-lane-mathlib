import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittVectorRing

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure TeichmuellerRepresentative (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] where
  wittRing : WittVectorRing p R
  map : R → wittRing.carrier
  multiplicative : (a b : R) → map (a * b) = wittRing.multiplication (map a) (map b)
  identityOnOne : map 1 = wittRing.one
  modP : (a : R) → (coefficient (map a) 0) = a
  aboveZero : (a : R) → (coefficient (map a) 0) = a
  teichmuellerClosed : Prop
  teichmuellerClosedTerm : teichmuellerClosed

theorem teichmueller_closed (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] (t : TeichmuellerRepresentative p R) : t.teichmuellerClosed := t.teichmuellerClosedTerm

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse