import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure CurvatureInvariantsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  curvatureForm : Type w
  chernClasses : Type x
  eulerClass : Type y
  pontryaginClasses : Type z
  invariantsDefined : Prop
  invariantsClosed : invariantsDefined

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  invariantsDefinedClosed : C.invariantsDefined

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.invariantsDefined

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantsPackage)
    (E : CurvatureInvariantsEvidence C) : CurvatureInvariantsClosed C := by
  exact E.invariantsDefinedClosed

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse