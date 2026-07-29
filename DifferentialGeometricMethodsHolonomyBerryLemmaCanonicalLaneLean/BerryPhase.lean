import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure BerryPhasePackage where
  parameterManifold : Type u
  topology : TopologicalSpace parameterManifold
  eigenvectorBundle : Type v
  berryConnection : Type w
  berryCurvature : Type x
  holonomy : Type y
  adiabaticTransport : Prop
  geometricPhase : Prop
  curvatureIdentities : Prop
  monodromy : Prop

structure BerryPhaseEvidence (B : BerryPhasePackage) where
  adiabaticTransportClosed : B.adiabaticTransport
  geometricPhaseClosed : B.geometricPhase
  curvatureIdentitiesClosed : B.curvatureIdentities
  monodromyClosed : B.monodromy

def BerryPhaseClosed (B : BerryPhasePackage) : Prop :=
  B.adiabaticTransport ∧ B.geometricPhase ∧ B.curvatureIdentities ∧ B.monodromy

theorem berry_phase_closed_from_evidence
    (B : BerryPhasePackage) (E : BerryPhaseEvidence B) :
    BerryPhaseClosed B := by
  exact And.intro E.adiabaticTransportClosed
    (And.intro E.geometricPhaseClosed
      (And.intro E.curvatureIdentitiesClosed E.monodromyClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse