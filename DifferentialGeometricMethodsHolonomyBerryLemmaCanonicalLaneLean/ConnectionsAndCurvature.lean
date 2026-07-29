import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure ConnectionPackage where
  baseManifold : Type u
  vectorBundle : Type v
  connectionForm : Type w
  curvatureForm : Type x
  parallelTransport : Prop
  metricCompatible : Prop
  torsionFree : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  parallelTransportClosed : C.parallelTransport
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree

def ConnectionClosed (C : ConnectionPackage) : Prop := 
  C.parallelTransport ∧ C.metricCompatible ∧ C.torsionFree

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.parallelTransportClosed (And.intro E.metricCompatibleClosed E.torsionFreeClosed)

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse