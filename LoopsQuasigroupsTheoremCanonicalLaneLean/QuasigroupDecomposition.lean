import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure QuasigroupDecomposition where
  carrier : Type u
  div : carrier → carrier → carrier
  divLeft : ∀ a b : carrier, div (div a b) b = a
  divRight : ∀ a b : carrier, div a (div a b) = b

structure QuasigroupDecompositionEvidence (Q : QuasigroupDecomposition) where
  carrierNonempty : Nonempty Q.carrier

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse