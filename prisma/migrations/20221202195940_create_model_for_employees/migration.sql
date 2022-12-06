-- CreateTable
CREATE TABLE "employee" (
    "id" SERIAL NOT NULL,
    "full_name" TEXT,
    "username" TEXT,
    "Dob" TEXT,
    "email" TEXT,
    "Age" INTEGER,
    "password" TEXT,
    "department" TEXT,
    "position" TEXT,

    CONSTRAINT "employee_pkey" PRIMARY KEY ("id")
);
