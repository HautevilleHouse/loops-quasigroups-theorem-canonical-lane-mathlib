import canonicalLaneMathlib.AdmissibleClass
import LoopsQuasigroupsTheoremCanonicalLaneLean.MoufangLoopStructure

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MoufangLoopEvidence (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse