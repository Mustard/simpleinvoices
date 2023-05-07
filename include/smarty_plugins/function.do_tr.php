<?php

function smarty_function_do_tr($params, &$smarty)
{
    if ($params['number'] % 2 == 0) {
        return "</tr><tr class='$params[class]'>";
    }

}

