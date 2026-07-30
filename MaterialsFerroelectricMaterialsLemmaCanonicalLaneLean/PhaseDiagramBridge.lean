import canonicalLaneMathlib.AdmissibleClass
import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.CrystallographyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FerroelectricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse