import DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean

structure HolonomyBerrySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HolonomyBerryAdmittedObject where
  space : HolonomyBerrySpace
  closedManifold : Prop
  connectionSmooth : Prop
  holonomyGroup : Type
  berryPhaseDefined : Prop
  conclusion : berryPhaseDefined

def HolonomyBerryWitnessClosed (O : HolonomyBerryAdmittedObject) : Prop :=
  O.berryPhaseDefined

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceRepository : String := "differential-geometric-methods-holonomy-berry-lemma-canonical-lane"
def sourceDescription : String := "Holonomy and Berry phase via differential geometric methods"

end DifferentialGeometricMethodsHolonomyBerryLemmaCanonicalLaneLean
end HautevilleHouse