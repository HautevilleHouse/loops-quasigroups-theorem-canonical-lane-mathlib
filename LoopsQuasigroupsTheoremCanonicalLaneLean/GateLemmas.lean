import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

def gateClosed (A : LoopsQuasigroupsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LoopsQuasigroupsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse
