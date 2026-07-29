import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

/-!
# Holonomy Group Representation Package

This module defines the holonomy group representation associated with a
Berry connection. It captures the geometric phase acquired along loops
in parameter space.
-/

structure HolonomyGroupPackage (B : BerryConnectionPackage) where
  holonomyGroup : Type u
  representation : holonomyGroup → (B.fiberSpace → B.fiberSpace)
  loopSpace : (B.baseSpace → B.baseSpace) → Prop
  holonomyMap : (loopSpace : (B.baseSpace → B.baseSpace) → Prop) →
    ((h : loopSpace) → holonomyGroup)
  groupOperation : holonomyGroup → holonomyGroup → holonomyGroup
  identityElement : holonomyGroup
  inverseElement : holonomyGroup → holonomyGroup
  groupAxioms : Prop
  representationClosed : Prop

structure HolonomyGroupEvidence {B : BerryConnectionPackage}
    (H : HolonomyGroupPackage B) where
  representationClosedClosed : H.representationClosed
  groupAxiomsClosed : H.groupAxioms

def HolonomyGroupClosed {B : BerryConnectionPackage}
    (H : HolonomyGroupPackage B) : Prop :=
  H.representationClosed ∧ H.groupAxioms

theorem holonomy_group_closed_from_evidence {B : BerryConnectionPackage}
    (H : HolonomyGroupPackage B) (E : HolonomyGroupEvidence H) :
    HolonomyGroupClosed H := by
  exact And.intro E.representationClosedClosed E.groupAxiomsClosed

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse