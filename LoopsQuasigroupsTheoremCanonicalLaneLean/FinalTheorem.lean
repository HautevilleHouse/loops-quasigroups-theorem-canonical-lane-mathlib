import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

def ConstrainedLoopsQuasigroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loops_quasigroups_endgame (A : AdmissibleClass) :
    ConstrainedLoopsQuasigroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse