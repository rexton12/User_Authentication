/*
  Warnings:

  - You are about to alter the column `full_name` on the `Bank_details` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `B_name` on the `Bank_details` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `Branch_name` on the `Bank_details` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `Account_no` on the `Bank_details` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `full_name` on the `department` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `department_name` on the `department` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `full_name` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `username` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `Dob` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `email` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `password` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `department` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `position` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `salary` on the `employee` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - A unique constraint covering the columns `[email]` on the table `employee` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Bank_details" ALTER COLUMN "full_name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "B_name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "Branch_name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "Account_no" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "department" ALTER COLUMN "full_name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "department_name" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "employee" ALTER COLUMN "full_name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "username" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "Dob" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "email" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "password" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "department" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "position" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "salary" SET DATA TYPE VARCHAR(255);

-- CreateIndex
CREATE UNIQUE INDEX "employee_email_key" ON "employee"("email");
