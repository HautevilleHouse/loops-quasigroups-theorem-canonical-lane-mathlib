import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LoopsQuasigroupsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LoopsQuasigroupsAdmittedObject where
  space : LoopsQuasigroupsSpace
  loopProperty : Prop
  quasigroupProperty : Prop
  conclusion : conclusionProperty

def conclusionProperty : Prop := True

def LoopsQuasigroupsWitnessClosed (O : LoopsQuasigroupsAdmittedObject) : Prop :=
  O.conclusion

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse