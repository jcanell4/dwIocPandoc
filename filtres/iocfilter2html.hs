-- iocfilter.hs
import Text.Pandoc.JSON
import Text.Pandoc

--Retorna el mateix que entra
iocfilter :: Pandoc -> Pandoc
iocfilter x = x

{-Des de l'entrada estàndard, usant la classe toJSONFilter es processa el filtre iocfilter 
    passant-li les dades entrades estructurade com un tipus Pandoc-}
main :: IO ()
main = toJSONFilter iocfilter
