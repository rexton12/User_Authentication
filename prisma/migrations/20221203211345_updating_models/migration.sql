/*
  Warnings:

  - Made the column `full_name` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `username` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `Dob` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `email` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `Age` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `password` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `department` on table `employee` required. This step will fail if there are existing NULL values in that column.
  - Made the column `position` on table `employee` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "employee" ALTER COLUMN "full_name" SET NOT NULL,
ALTER COLUMN "username" SET NOT NULL,
ALTER COLUMN "Dob" SET NOT NULL,
ALTER COLUMN "email" SET NOT NULL,
ALTER COLUMN "Age" SET NOT NULL,
ALTER COLUMN "password" SET NOT NULL,
ALTER COLUMN "department" SET NOT NULL,
ALTER COLUMN "position" SET NOT NULL;
