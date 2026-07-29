import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean.HolonomyConnectionPackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure HolonomyGroupStructure {H : HolonomyConnectionPackage} where
  loopSpace : Type u
  holonomyMap : loopSpace → H.holonomyGroup
  identityPreserved : Prop
  compositionPreserved : Prop
  inversePreserved : Prop
  smoothDependence : Prop
  reducedHolonomy : Prop

structure HolonomyGroupEvidence {H : HolonomyConnectionPackage} (G : HolonomyGroupStructure H) where
  identityPreservedClosed : G.identityPreserved
  compositionPreservedClosed : G.compositionPreserved
  inversePreservedClosed : G.inversePreserved
  smoothDependenceClosed : G.smoothDependence
  reducedHolonomyClosed : G.reducedHolonomy

def HolonomyGroupClosed {H : HolonomyConnectionPackage} (G : HolonomyGroupStructure H) : Prop :=
  G.identityPreserved ∧ G.compositionPreserved ∧ G.inversePreserved ∧
  G.smoothDependence ∧ G.reducedHolonomy

theorem holonomy_group_closed_from_evidence
    {H : HolonomyConnectionPackage} (G : HolonomyGroupStructure H)
    (E : HolonomyGroupEvidence G) : HolonomyGroupClosed G := by
  exact And.intro E.identityPreservedClosed
    (And.intro E.compositionPreservedClosed
      (And.intro E.inversePreservedClosed
        (And.intro E.smoothDependenceClosed E.reducedHolonomyClosed)))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse