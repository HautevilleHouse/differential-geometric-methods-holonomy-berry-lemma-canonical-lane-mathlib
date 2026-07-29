import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure HolonomyInvariantParallelTransportPackage where
  manifold : Type u
  tangentBundle : Type v
  metric : Type w
  parallelTransportMap : Type x
  holonomyRepresentation : Type y
  riemannianHolonomy : Prop
  curvingFlatness : Prop
  invariantSubspace : Prop
  berryPhaseParallel : Prop

structure HolonomyInvariantParallelTransportEvidence
    (H : HolonomyInvariantParallelTransportPackage) where
  riemannianHolonomyClosed : H.riemannianHolonomy
  curvingFlatnessClosed : H.curvingFlatness
  invariantSubspaceClosed : H.invariantSubspace
  berryPhaseParallelClosed : H.berryPhaseParallel

def HolonomyInvariantParallelTransportClosed
    (H : HolonomyInvariantParallelTransportPackage) : Prop :=
  H.riemannianHolonomy ∧ H.curvingFlatness ∧
  H.invariantSubspace ∧ H.berryPhaseParallel

theorem holonomy_invariant_parallel_transport_closed_from_evidence
    (H : HolonomyInvariantParallelTransportPackage)
    (E : HolonomyInvariantParallelTransportEvidence H) :
    HolonomyInvariantParallelTransportClosed H := by
  exact And.intro E.riemannianHolonomyClosed
    (And.intro E.curvingFlatnessClosed
      (And.intro E.invariantSubspaceClosed E.berryPhaseParallelClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse
