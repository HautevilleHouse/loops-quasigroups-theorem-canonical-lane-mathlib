import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LoopsQuasigroupsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LoopsQuasigroupsAdmittedObject where
  space : LoopsQuasigroupsSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure LoopsQuasigroupsEndgameState where
  object : LoopsQuasigroupsAdmittedObject

def LoopsQuasigroupsWitnessClosed (O : LoopsQuasigroupsAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse