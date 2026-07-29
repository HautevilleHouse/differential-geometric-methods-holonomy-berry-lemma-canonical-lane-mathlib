import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  ellipticOperator : Type v
  index : Type w
  indexFormula : Prop
  indexComputed : Prop
  indexClosed : indexFormula ∧ indexComputed

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexFormulaClosed : I.indexFormula
  indexComputedClosed : I.indexComputed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.indexComputed

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed E.indexComputedClosed

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse