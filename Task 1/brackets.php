<?php
function checkBrackets($str){
    $open = 0;
    $close = 0;
    for ($i = 0; $i <= strlen($str); $i++) {
        switch ($str[$i]) {
            case "(":
                $open++;
                break;
            case ")":
                if ($open > $close) {
                    $close++;
                } else {
                    exit("Нарушена последовательность расставления скобок");
                }
                break;
        }
    }
    if ($open != $close) {
        exit("Нарушена последовательность расставления скобок");
    } else {
        exit("Количество открытых скобок: $open, закрытых: $close");
    }
}
