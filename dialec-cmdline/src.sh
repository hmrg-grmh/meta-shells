dialec_cmdlines ()
{
    ask_user ()
    {
        predesc="${1:-Hey ๐ป}"
        ask="${2:-what should i ask ???}" &&
        anss="${3:-[y/n] (:p)}" &&
        
        cases="${4:-
            case \"\$ans\" in 
                
                y|\'\') echo ๐ฆ yup\?\? ; break ;; 
                n) echo ๐ค no\? ; break ;; 
                *) echo ๐คจ ahh\? what is \'\$"{"ans:-:p"}"\' \? ;; esac }" &&
        
        
        echo "$predesc" &&
        while read -p "$ask $anss " -- ans ;
        do eval "$cases" ; done ;
    } ;
    
    :;
} ;

