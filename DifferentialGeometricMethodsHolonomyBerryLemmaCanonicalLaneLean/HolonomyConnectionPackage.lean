import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure HolonomyConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : ContDiffManifold 𝓘(ℝ, manifold) manifold
  connection : Type v
  parallelTransport : Type w
  holonomyGroup : Type x
  connectionSmooth : Prop
  parallelTransportWellDefined : Prop
  holonomyGroupWellDefined : Prop
  metricCompatible : Prop
  torsionFree : Prop

structure HolonomyConnectionEvidence (H : HolonomyConnectionPackage) where
  connectionSmoothClosed : H.connectionSmooth
  parallelTransportWellDefinedClosed : H.parallelTransportWellDefined
  holonomyGroupWellDefinedClosed : H.holonomyGroupWellDefined
  metricCompatibleClosed : H.metricCompatible
  torsionFreeClosed : H.torsionFree

def HolonomyConnectionClosed (H : HolonomyConnectionPackage) : Prop :=
  H.connectionSmooth ∧ H.parallelTransportWellDefined ∧ H.holonomyGroupWellDefined ∧
  H.metricCompatible ∧ H.torsionFree

theorem holonomy_connection_closed_from_evidence
    (H : HolonomyConnectionPackage) (E : HolonomyConnectionEvidence H) :
    HolonomyConnectionClosed H := by
  exact And.intro E.connectionSmoothClosed
    (And.intro E.parallelTransportWellDefinedClosed
      (And.intro E.holonomyGroupWellDefinedClosed
        (And.intro E.metricCompatibleClosed E.torsionFreeClosed)))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse