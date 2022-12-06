from ariadne import make_executable_schema
from ariadne.asgi import GraphQL
from ariadne import load_schema_from_path, ObjectType
from src.resolver import Search_employee_resolver, find_employee_id, employee_resolver, employee_login_resolver
type_defs = load_schema_from_path("schema.graphql")
query = ObjectType("Query")
mutation = ObjectType("Mutation")
    
#queries
query.set_field("find", find_employee_id)

#mutations

mutation.set_field("createEmployee", employee_resolver)
mutation.set_field("User_login", employee_login_resolver)
mutation.set_field("list_employee", Search_employee_resolver)


schema = make_executable_schema(type_defs, query, mutation)
app = GraphQL(schema, debug=True)

