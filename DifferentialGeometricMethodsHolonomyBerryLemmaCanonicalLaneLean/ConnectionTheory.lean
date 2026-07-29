import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure ConnectionTheoryPackage where
  principalBundle : Type u
  baseManifold : Type v
  baseTopology : TopologicalSpace baseManifold
  structureGroup : Type w
  connectionForm : Type x
  curvatureForm : Type y
  holonomy : Type z
  connectionDefined : Prop
  curvatureDefined : Prop
  holonomyDefined : Prop
  connectionClosed : connectionDefined ∧ curvatureDefined ∧ holonomyDefined

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  connectionDefinedClosed : C.connectionDefined
  curvatureDefinedClosed : C.curvatureDefined
  holonomyDefinedClosed : C.holonomyDefined

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.connectionDefined ∧ C.curvatureDefined ∧ C.holonomyDefined

theorem connection_theory_closed_from_evidence (C : ConnectionTheoryPackage)
    (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.connectionDefinedClosed (And.intro E.curvatureDefinedClosed E.holonomyDefinedClosed)

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse