import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LagrangePackage where
  loopType : Type u
  loopStr : Loop loopType
  subloopFiniteness : Prop
  subloopOrderDivides : Prop

structure LagrangeEvidence (L : LagrangePackage) where
  subloopFinitenessClosed : L.subloopFiniteness
  subloopOrderDividesClosed : L.subloopOrderDivides

def LagrangeClosed (L : LagrangePackage) : Prop :=
  L.subloopFiniteness ∧ L.subloopOrderDivides

theorem lagrange_closed_from_evidence (L : LagrangePackage) (E : LagrangeEvidence L) : LagrangeClosed L := by
  exact And.intro E.subloopFinitenessClosed E.subloopOrderDividesClosed

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse