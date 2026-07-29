import GaloisCohomologyCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  galoisCohomologyStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse