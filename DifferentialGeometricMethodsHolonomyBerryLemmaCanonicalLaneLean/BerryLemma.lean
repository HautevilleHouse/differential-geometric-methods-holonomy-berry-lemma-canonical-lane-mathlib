import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure BerryLemmaPackage where
  hilbertSpace : Type u
  parameterManifold : Type v
  parameterTopology : TopologicalSpace parameterManifold
  hamiltonian : parameterManifold → (hilbertSpace → hilbertSpace)
  eigenstate : parameterManifold → hilbertSpace
  berryConnection : Type w
  berryCurvature : Type x
  holonomy : Type y
  lemmaStatement : Prop
  lemmaClosed : lemmaStatement

structure BerryLemmaEvidence (B : BerryLemmaPackage) where
  lemmaStatementClosed : B.lemmaStatement

def BerryLemmaClosed (B : BerryLemmaPackage) : Prop :=
  B.lemmaStatement

theorem berry_lemma_closed_from_evidence (B : BerryLemmaPackage)
    (E : BerryLemmaEvidence B) : BerryLemmaClosed B := by
  exact E.lemmaStatementClosed

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse