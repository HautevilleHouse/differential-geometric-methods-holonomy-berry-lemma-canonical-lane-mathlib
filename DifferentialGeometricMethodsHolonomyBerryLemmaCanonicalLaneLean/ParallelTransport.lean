import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure ParallelTransportPackage where
  fiberBundle : Type u
  baseSpace : Type v
  connection : Type w
  pathSpace : Type x
  parallelTransportMap : Type y
  holonomyRepresentation : Type z
  smoothDependence : Prop
  curvatureCurvatureRelation : Prop
  ammermanIdentity : Prop

structure ParallelTransportEvidence (P : ParallelTransportPackage) where
  smoothDependenceClosed : P.smoothDependence
  curvatureCurvatureRelationClosed : P.curvatureCurvatureRelation
  ammermanIdentityClosed : P.ammermanIdentity

def ParallelTransportClosed (P : ParallelTransportPackage) : Prop :=
  P.smoothDependence ∧ P.curvatureCurvatureRelation ∧ P.ammermanIdentity

theorem parallel_transport_closed_from_evidence
    (P : ParallelTransportPackage) (E : ParallelTransportEvidence P) :
    ParallelTransportClosed P := by
  exact And.intro E.smoothDependenceClosed
    (And.intro E.curvatureCurvatureRelationClosed E.ammermanIdentityClosed)

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse