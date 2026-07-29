import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.LoopTheoryAdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

def bridgeClosed (A : LoopsQuasigroupsAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : LoopsQuasigroupsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse
