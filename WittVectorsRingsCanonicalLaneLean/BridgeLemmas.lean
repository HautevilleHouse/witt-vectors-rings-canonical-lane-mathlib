import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace WittVectorsRingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WittWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WittVectorsRingsCanonicalLaneLean
end HautevilleHouse