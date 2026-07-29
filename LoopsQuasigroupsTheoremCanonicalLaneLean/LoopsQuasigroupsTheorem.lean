import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.MathlibObjects
import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.LoopsQuasigroupsStructure

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

theorem main_theorem (L : LoopStructure) : loopsQuasigroupsBridgeClosed L := by
  apply loops_quasigroups_bridge_from_structure L

def LoopsQuasigroupsTheoremStatement : Prop :=
  ∀ (L : LoopStructure), loopsQuasigroupsBridgeClosed L

theorem loops_quasigroups_theorem_proved : LoopsQuasigroupsTheoremStatement := by
  intro L
  exact main_theorem L

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse