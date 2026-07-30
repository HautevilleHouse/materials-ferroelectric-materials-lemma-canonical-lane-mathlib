import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.PhaseDiagramPackage

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure LandauGinzburgDevonshirePackage (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) where
  freeEnergy : Type
  orderParameter : Type
  gradientTerm : Prop
  electrostaticCoupling : Prop
  elasticCoupling : Prop
  domainFormation : Prop

structure LandauGinzburgDevonshireEvidence (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) (L : LandauGinzburgDevonshirePackage A C P) where
  gradientTermClosed : L.gradientTerm
  electrostaticCouplingClosed : L.electrostaticCoupling
  elasticCouplingClosed : L.elasticCoupling
  domainFormationClosed : L.domainFormation

def LandauGinzburgDevonshireClosed (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) (L : LandauGinzburgDevonshirePackage A C P) : Prop :=
  L.gradientTerm ∧ L.electrostaticCoupling ∧ L.elasticCoupling ∧ L.domainFormation

theorem landau_ginzburg_devonshire_closed_from_evidence (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) (L : LandauGinzburgDevonshirePackage A C P) (E : LandauGinzburgDevonshireEvidence A C P L) :
    LandauGinzburgDevonshireClosed A C P L := by
  exact And.intro E.gradientTermClosed (And.intro E.electrostaticCouplingClosed (And.intro E.elasticCouplingClosed E.domainFormationClosed))

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse