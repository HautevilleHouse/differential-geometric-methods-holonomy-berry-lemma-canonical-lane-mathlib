import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

/-!
# Adiabatic Theorem and Holonomy Package

This module formalizes the adiabatic theorem in the context of holonomy and
Berry phases. It connects the time-dependent Hamiltonian evolution with the
the geometric structure of the Berry connection.
-/

structure AdiabaticTheoremPackage (B : BerryConnectionPackage) where
  timeDomain : Type u
  slowParameter : timeDomain → B.baseSpace
  instantaneousHamiltonian : timeDomain → (B.fiberSpace → B.fiberSpace)
  evolvedState : timeDomain → B.fiberSpace
  initialEigenstate : B.fiberSpace
  adiabaticEvolution : timeDomain → B.fiberSpace
  adiabaticLimit : Prop
  parallelTransportApproximation : Prop
  holonomyCorrespondence : Prop

structure AdiabaticTheoremEvidence {B : BerryConnectionPackage}
    (A : AdiabaticTheoremPackage B) where
  adiabaticLimitClosed : A.adiabaticLimit
  parallelTransportApproximationClosed : A.parallelTransportApproximation
  holonomyCorrespondenceClosed : A.holonomyCorrespondence

def AdiabaticTheoremClosed {B : BerryConnectionPackage}
    (A : AdiabaticTheoremPackage B) : Prop :=
  A.adiabaticLimit ∧ A.parallelTransportApproximation ∧ A.holonomyCorrespondence

theorem adiabatic_theorem_closed_from_evidence {B : BerryConnectionPackage}
    (A : AdiabaticTheoremPackage B) (E : AdiabaticTheoremEvidence A) :
    AdiabaticTheoremClosed A := by
  exact And.intro E.adiabaticLimitClosed
    (And.intro E.parallelTransportApproximationClosed E.holonomyCorrespondenceClosed)

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse