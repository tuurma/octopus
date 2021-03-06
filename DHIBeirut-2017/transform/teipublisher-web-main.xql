import module namespace m='http://www.tei-c.org/pm/models/teipublisher/web' at '/db/apps/dhib2017/transform/teipublisher-web.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["../transform/teipublisher.css"],
    "collection": "/db/apps/dhib2017/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)