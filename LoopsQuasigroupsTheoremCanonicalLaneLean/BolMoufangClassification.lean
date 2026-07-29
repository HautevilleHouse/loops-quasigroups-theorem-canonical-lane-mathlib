import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure BolMoufangClassificationPackage where
  loopType : Type u
  loopStr : Loop loopType
  isBol : Prop
  isMoufang : Prop
  classification : Prop

structure BolMoufangClassificationEvidence (C : BolMoufangClassificationPackage) where
  isBolClosed : C.isBol
  isMoufangClosed : C.isMoufang
  classificationClosed : C.classification

def BolMoufangClassificationClosed (C : BolMoufangClassificationPackage) : Prop :=
  C.isBol ∧ C.isMoufang ∧ C.classification

theorem bol_moufang_classification_closed_from_evidence
    (C : BolMoufangClassificationPackage) (E : BolMoufangClassificationEvidence C) :
    BolMoufangClassificationClosed C := by
  exact And.intro E.isBolClosed (And.intro E.isMoufangClosed E.classificationClosed)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse