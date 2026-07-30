import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

structure GhostComponentMaps (p : ℕ) [Fact (Nat.Prime p)] where
  ghostMap : Type u
  ghostReciprocity : Prop
  teichmuellerLift : Prop
  componentwiseEquality : Prop

structure GhostComponentMapsEvidence (p : ℕ) [Fact (Nat.Prime p)] (G : GhostComponentMaps p) where
  ghostMapClosed : G.ghostMap
  ghostReciprocityClosed : G.ghostReciprocity
  teichmuellerLiftClosed : G.teichmuellerLift
  componentwiseEqualityClosed : G.componentwiseEquality

def GhostComponentMapsClosed (p : ℕ) [Fact (Nat.Prime p)] (G : GhostComponentMaps p) : Prop :=
  G.ghostMap ∧ G.ghostReciprocity ∧ G.teichmuellerLift ∧ G.componentwiseEquality

theorem ghost_component_maps_closed_from_evidence (p : ℕ) [Fact (Nat.Prime p)] (G : GhostComponentMaps p)
    (E : GhostComponentMapsEvidence p G) : GhostComponentMapsClosed p G := by
  exact And.intro E.ghostMapClosed (And.intro E.ghostReciprocityClosed (And.intro E.teichmuellerLiftClosed E.componentwiseEqualityClosed))

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse