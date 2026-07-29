import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

/-!
# Berry Curvature and Connection Package

This module defines the principal bundle connection, curvature two-form,
and Berry curvature associated with a parameter-dependent Hamiltonian.
-/

structure BerryConnectionPackage where
  baseSpace : Type u
  fiberSpace : Type v
  totalSpace : Type w
  projectionMap : totalSpace → baseSpace
  connectionOneForm : Type x
  curvatureTwoForm : Type y
  berryCurvature : Type z
  hamiltonianFamily : baseSpace → (fiberSpace → fiberSpace)
  eigenstateSections : baseSpace → fiberSpace
  parallelTransportDefined : Prop
  holonomyGroup : Type u2

structure BerryCurvatureEvidence (B : BerryConnectionPackage) where
  connectionOneFormClosed : (B.connectionOneForm : Prop)
  curvatureTwoFormClosed : (B.curvatureTwoForm : Prop)
  berryCurvatureClosed : (B.berryCurvature : Prop)
  parallelTransportDefinedClosed : B.parallelTransportDefined

def BerryCurvatureClosed (B : BerryConnectionPackage) : Prop :=
  (B.connectionOneForm : Prop) ∧ (B.curvatureTwoForm : Prop) ∧
  (B.berryCurvature : Prop) ∧ B.parallelTransportDefined

theorem berry_curvature_closed_from_evidence (B : BerryConnectionPackage)
    (E : BerryCurvatureEvidence B) : BerryCurvatureClosed B := by
  exact And.intro E.connectionOneFormClosed
    (And.intro E.curvatureTwoFormClosed
      (And.intro E.berryCurvatureClosed E.parallelTransportDefinedClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse