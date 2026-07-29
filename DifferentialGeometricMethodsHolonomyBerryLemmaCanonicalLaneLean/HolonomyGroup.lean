import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure HolonomyGroupPackage where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  principalBundle : Type v
  connectionForm : Type w
  holonomyGroup : Type x
  holonomyLieAlgebra : Type y
  smoothStructure : Prop
  connectionCompatibility : Prop
  reductionTheorem : Prop
  amberstrorConstraint : Prop

structure HolonomyGroupEvidence (H : HolonomyGroupPackage) where
  smoothStructureClosed : H.smoothStructure
  connectionCompatibilityClosed : H.connectionCompatibility
  reductionTheoremClosed : H.reductionTheorem
  amberstrorConstraintClosed : H.amberstrorConstraint

def HolonomyGroupClosed (H : HolonomyGroupPackage) : Prop :=
  H.smoothStructure ∧ H.connectionCompatibility ∧ H.reductionTheorem ∧ H.amberstrorConstraint

theorem holonomy_group_closed_from_evidence
    (H : HolonomyGroupPackage) (E : HolonomyGroupEvidence H) :
    HolonomyGroupClosed H := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.connectionCompatibilityClosed
      (And.intro E.reductionTheoremClosed E.amberstrorConstraintClosed))

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse