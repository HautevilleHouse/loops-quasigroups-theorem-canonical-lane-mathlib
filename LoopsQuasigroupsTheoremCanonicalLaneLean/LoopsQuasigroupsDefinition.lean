import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

struct LoopCarrier (A : Type u) where
  carrier : Type u
  unit : carrier
  mul : carrier → carrier → carrier
  leftUnit : ∀ x : carrier, mul unit x = x
  rightUnit : ∀ x : carrier, mul x unit = x
  associativity : ∀ x y z : carrier, mul (mul x y) z = mul x (mul y z)
  invertibility : ∀ x : carrier, ∃ y : carrier, mul x y = unit ∧ mul y x = unit

def loopMoufangIdentity (L : LoopCarrier) : Prop :=
  ∀ x y z : L.carrier, L.mul (L.mul x (L.mul y x)) z = L.mul x (L.mul y (L.mul x z))

structure QuasigroupCarrier (A : Type u) where
  carrier : Type u
  mul : carrier → carrier → carrier
  div : carrier → carrier → carrier
  leftDivision : ∀ a b : carrier, mul a (div a b) = b
  rightDivision : ∀ a b : carrier, mul (div b a) a = b

def quasigroupLatinSquare (Q : QuasigroupCarrier) : Prop :=
  ∀ a b : Q.carrier, ∃! x : Q.carrier, Q.mul a x = b

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse