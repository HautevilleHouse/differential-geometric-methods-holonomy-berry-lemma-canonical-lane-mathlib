import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure AdiabaticTheoremPackage where
  hamiltonianFamily : Type u
  parameterSpace : Type v
  instantaneousEigenstates : Type w
  adiabaticEvolution : Type x
  berryPhase : Type y
  gapCondition : Prop
  adiabaticLimit : Prop
  eigenstateSmoothness : Prop
  berryCurvatureIntegral : Prop

structure AdiabaticTheoremEvidence (A : AdiabaticTheoremPackage) where
  gapConditionClosed : A.gapCondition
  adiabaticLimitClosed : A.adiabaticLimit
  eigenstateSmoothnessClosed : A.eigenstateSmoothness
  berryCurvatureIntegralClosed : A.berryCurvatureIntegral

def AdiabaticTheoremClosed (A : AdiabaticTheoremPackage) : Prop :=
  A.gapCondition ∧ A.adiabaticLimit ∧ A.eigenstateSmoothness ∧ A.berryCurvatureIntegral

theorem adiabatic_theorem_closed_from_evidence
    (A : AdiabaticTheoremPackage) (E : AdiabaticTheoremEvidence A) :
    AdiabaticTheoremClosed A := by
  exact And.intro E.gapConditionClosed
    (And.intro E.adiabaticLimitClosed
      (And.intro E.eigenstateSmoothnessClosed E.berryCurvatureIntegralClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse