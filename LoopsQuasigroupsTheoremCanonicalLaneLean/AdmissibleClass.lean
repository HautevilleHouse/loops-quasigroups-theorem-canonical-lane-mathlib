import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LoopsQuasigroupsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  loopsQuasigroupsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse