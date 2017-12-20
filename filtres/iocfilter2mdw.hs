-- iocfilter.hs
import Text.Pandoc.JSON
import Text.Pandoc
import Text.Pandoc.Walk (walk)

{-Rep un Block (element de Pandoc) i en cas que sigui de tipus Header, li neteija la numeració i afegeix si cal l'identificador.
    Si no és de tipus Header el retorna ense modificar
-}
processHeader :: Block -> Block
processHeader (Header n xa xs) = Header n nullAttr xs
processHeader x = x

--Rep un tipus de dades Pandoc i el retorna un cop processats cada un dels elements que el composen a través de processHeader
iocfilter :: Pandoc -> Pandoc
iocfilter x = walk processHeader x

{-Des de l'entrada estàndard, usant la classe toJSONFilter es processa el filtre iocfilter 
    passant-li les dades entrades estructurade com un tipus Pandoc-}
main :: IO ()
main = toJSONFilter iocfilter
