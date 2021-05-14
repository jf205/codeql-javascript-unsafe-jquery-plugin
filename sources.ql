import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode n |
        source = n.getLastParameter() and n = jquery().getAPropertyRead("fn").getAPropertySource()
    )
}

from DataFlow::Node node
where isSource(node)
select node

