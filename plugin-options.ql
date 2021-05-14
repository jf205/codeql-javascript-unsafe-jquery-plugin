import javascript

from DataFlow::FunctionNode n, DataFlow::ParameterNode param
where param = n.getLastParameter() and n = jquery().getAPropertyRead("fn").getAPropertySource()
select n, param
