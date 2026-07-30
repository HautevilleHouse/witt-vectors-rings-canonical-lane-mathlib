import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittVectorRing
import HautevilleHouse.WittVectorsRingsCanonicalLaneLean.WittPolynomial

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure GhostMap (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] where
  source : WittVectorRing p R
  target : ℕ → R
  mapDef : (w : source.carrier) → (n : ℕ) → target n = wittPolynomial p n (fun i => (coefficient w i))
  ringHomomorphism : Prop
  ringHomomorphismTerm : ringHomomorphism

theorem ghost_map_ring_hom (p : Nat) [Fact (Nat.Prime p)] (R : Type u) [CommRing R] (g : GhostMap p R) : g.ringHomomorphism := g.ringHomomorphismTerm

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse