import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure ConnectionCurvaturePackage where
  totalSpace : Type u
  baseSpace : Type v
  structureGroup : Type w
  principalConnection : Type x
  curvatureTwoForm : Type y
  holonomyGroup : Type z
  smoothPrincipalBundle : Prop
  connectionSmooth : Prop
  curvatureTransformationLaw : Prop
  holonomyFromCurvature : Prop
  berryPhaseConnection : Prop

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage) where
  smoothPrincipalBundleClosed : C.smoothPrincipalBundle
  connectionSmoothClosed : C.connectionSmooth
  curvatureTransformationLawClosed : C.curvatureTransformationLaw
  holonomyFromCurvatureClosed : C.holonomyFromCurvature
  berryPhaseConnectionClosed : C.berryPhaseConnection

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage) : Prop :=
  C.smoothPrincipalBundle ∧ C.connectionSmooth ∧
  C.curvatureTransformationLaw ∧ C.holonomyFromCurvature ∧
  C.berryPhaseConnection

theorem connection_curvature_closed_from_evidence
    (C : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence C) :
    ConnectionCurvatureClosed C := by
  exact And.intro E.smoothPrincipalBundleClosed
    (And.intro E.connectionSmoothClosed
      (And.intro E.curvatureTransformationLawClosed
        (And.intro E.holonomyFromCurvatureClosed E.berryPhaseConnectionClosed)))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse
