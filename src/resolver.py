from prisma import Prisma
from prisma.models import employee
from src.login_auth import encryptPassword
from src.login_auth import validatePassword
from graphql import GraphQLError
prisma = Prisma()

async def employee_resolver(_, info, input):
    try:
        await prisma.connect()
        email= await prisma.employee.find_unique(
            where={
              'email': input["email"],
                },
            )
        if email:
            raise GraphQLError('User already exist')
        else:
            users = await prisma.employee.create(
                data={
                    'username':input["username"],
                    'first_name':input["first_name"],
                    'last_name':input["last_name"],
                    'email': input["email"],
                    'password': encryptPassword(input["password"]),
                    'gender':  input["gender"],
                    'position': input["position"],
               },
        )
        
            return users
    finally:
        await prisma.disconnect()


#login

async def employee_login_resolver(_, info, input):
    try:
        await prisma.connect()
        userDetails= await prisma.employee.find_first(
            where= {
                'email':input["email"],
            }
        )
        if userDetails:
            validate = validatePassword(input["password"], userDetails.password)
            if validate:
                return userDetails
            else:
                raise GraphQLError('incorrect password')
        else:
            raise GraphQLError('incorrect credentials, Sign Up')
    finally:
        await prisma.disconnect()


#Retrieving all employees
async def Search_employee_resolver(_, info, input):
    try:
        await prisma.connect()
        users = await prisma.employee.find_many(
        where = {
                'OR':
                    [
                    {
                        'first_name':input["first_name"]
                        },
                        {
                        'last_name':input["last_name"]
                        },
                ],
            },
        )
        if users:
            return users
        else:
            raise GraphQLError('User not found')
    finally:
        await prisma.disconnect()
    
    
#Searching all employees by id
async def find_employee_id(id: str):
    await prisma.connect()
    user = await prisma.employee.find_unique(where={"id": id})
    await prisma.disconnect()
    return user