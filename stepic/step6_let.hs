module Roots where

roots a b c =
    (
        (-b - sqrt (b^2 - 4 * a * c)) / (2 * a)
    ,
        (-b + sqrt(b^2 - 4 * a * c)) / (2 * a)
    )

roots' a b c =
    let d = sqrt(b^2 - 4 * a * c) in
        ((-b - d) / (2 * a), (-b + d) / (2 * a))

roots'' a b c =
    let {d = sqrt(b^2 - 4 * a * c); x1 = (-b - d) / (2 * a); x2 = (-b + d) / (2 * a)} in (x1, x2)
