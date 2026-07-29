import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure BerryPhaseAdiabaticPackage where
  hilbertSpace : Type u
  timeDependentHamiltonian : Type v
  eigenstateFamily : Type w
  berryConnection : Type x
  berryCurvature : Type y
  adiabaticParameter : Prop
  nondegenerateSpectrum : Prop
  gappedCondition : Prop
  berryPhaseFormula : Prop

structure BerryPhaseAdiabaticEvidence (B : BerryPhaseAdiabaticPackage) where
  adiabaticParameterClosed : B.adiabaticParameter
  nondegenerateSpectrumClosed : B.nondegenerateSpectrum
  gappedConditionClosed : B.gappedCondition
  berryPhaseFormulaClosed : B.berryPhaseFormula

def BerryPhaseAdiabaticClosed (B : BerryPhaseAdiabaticPackage) : Prop :=
  B.adiabaticParameter ∧ B.nondegenerateSpectrum ∧
  B.gappedCondition ∧ B.berryPhaseFormula

theorem berry_phase_adiabatic_closed_from_evidence
    (B : BerryPhaseAdiabaticPackage) (E : BerryPhaseAdiabaticEvidence B) :
    BerryPhaseAdiabaticClosed B := by
  exact And.intro E.adiabaticParameterClosed
    (And.intro E.nondegenerateSpectrumClosed
      (And.intro E.gappedConditionClosed E.berryPhaseFormulaClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse
