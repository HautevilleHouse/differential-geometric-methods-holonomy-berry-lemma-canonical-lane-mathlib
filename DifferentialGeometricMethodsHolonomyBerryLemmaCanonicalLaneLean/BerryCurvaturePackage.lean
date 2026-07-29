import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean.HolonomyConnectionPackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure BerryCurvaturePackage {H : HolonomyConnectionPackage} where
  parameterSpace : Type u
  parameterTopology : TopologicalSpace parameterSpace
  hamiltonianFamily : parameterSpace → (Type v → Type w)
  eigenstateBundle : Type x
  berryConnection : Type y
  berryCurvature : Type z
  adiabaticEvolution : Prop
  geometricPhase : Prop
  berryConnectionSmooth : Prop
  curvatureTwoFormClosed : Prop

structure BerryCurvatureEvidence {H : HolonomyConnectionPackage} (B : BerryCurvaturePackage H) where
  adiabaticEvolutionClosed : B.adiabaticEvolution
  geometricPhaseClosed : B.geometricPhase
  berryConnectionSmoothClosed : B.berryConnectionSmooth
  curvatureTwoFormClosedClosed : B.curvatureTwoFormClosed

def BerryCurvatureClosed {H : HolonomyConnectionPackage} (B : BerryCurvaturePackage H) : Prop :=
  B.adiabaticEvolution ∧ B.geometricPhase ∧ B.berryConnectionSmooth ∧ B.curvatureTwoFormClosed

theorem berry_curvature_closed_from_evidence
    {H : HolonomyConnectionPackage} (B : BerryCurvaturePackage H)
    (E : BerryCurvatureEvidence B) : BerryCurvatureClosed B := by
  exact And.intro E.adiabaticEvolutionClosed
    (And.intro E.geometricPhaseClosed
      (And.intro E.berryConnectionSmoothClosed E.curvatureTwoFormClosedClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse