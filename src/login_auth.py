import bcrypt
from typing import Dict
# from datetime import datetime, timedelta, timezone

# import jwt
# import os

# jwtSecret = os.environ.get("JWT_SECRET")


# def signJWT(user_id: str) -> Dict[str, str]:
#     EXPIRES = datetime.now(tz=timezone.utc) + timedelta(days=365)

#     payload = {
#         "exp": EXPIRES,
#         "userId": user_id,
#     }
#     token = jwt.encode(payload, jwtSecret, algorithm="HS256")
#     return token

# def decodeJWT(token: str) -> dict:
#     try:
#         decoded = jwt.decode(token, jwtSecret, algorithms=["HS256"])
#         return decoded if decoded["expires"] else None
#     except jwt.ExpiredSignatureError:
#         print("Token expired. Get new one")
#         return None
#     except:
#         return None

def encryptPassword(password: str) -> str:
    return bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt()).decode("utf-8")

def validatePassword(password: str, encrypted: str) -> str:
    return bcrypt.checkpw(password.encode("utf-8"), encrypted.encode("utf-8"))


