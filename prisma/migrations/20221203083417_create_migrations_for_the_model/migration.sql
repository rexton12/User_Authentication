/*
  Warnings:

  - Added the required column `salary` to the `employee` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "employee" ADD COLUMN     "salary" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "Bank_details" (
    "B_code" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "B_name" TEXT NOT NULL,
    "Branch_name" TEXT NOT NULL,
    "Account_no" TEXT NOT NULL,

    CONSTRAINT "Bank_details_pkey" PRIMARY KEY ("B_code")
);

-- CreateTable
CREATE TABLE "department" (
    "D_id" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "department_name" TEXT NOT NULL,

    CONSTRAINT "department_pkey" PRIMARY KEY ("D_id")
);

-- CreateTable
CREATE TABLE "salary" (
    "s_id" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "payment_date" TEXT NOT NULL,

    CONSTRAINT "salary_pkey" PRIMARY KEY ("s_id")
);
