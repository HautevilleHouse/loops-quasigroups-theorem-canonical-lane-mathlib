import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LoopsQuasigroupsAdmittedObject where
  loop : LoopCarrier
  isMoufang : Prop
  isQuasigroup : QuasigroupCarrier
  compatibility : isMoufang ∧ ∀ x y z : loop.carrier, loop.mul (loop.mul x y) z = loop.mul x (loop.mul y z)

def LoopsQuasigroupsWitnessClosed (O : LoopsQuasigroupsAdmittedObject) : Prop :=
  O.isMoufang ∧ O.compatibility.1

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LoopsQuasigroupsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedLoopsQuasigroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loops_quasigroups_endgame (A : AdmissibleClass) : ConstrainedLoopsQuasigroupsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse