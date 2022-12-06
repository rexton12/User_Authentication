/*
  Warnings:

  - You are about to drop the column `Dob` on the `employee` table. All the data in the column will be lost.
  - You are about to drop the column `department` on the `employee` table. All the data in the column will be lost.
  - You are about to drop the `Bank_details` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `department` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `salaries_paid` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `first_name` to the `employee` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_name` to the `employee` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "employee" DROP COLUMN "Dob",
DROP COLUMN "department",
ADD COLUMN     "first_name" VARCHAR(255) NOT NULL,
ADD COLUMN     "last_name" VARCHAR(255) NOT NULL;

-- DropTable
DROP TABLE "Bank_details";

-- DropTable
DROP TABLE "department";

-- DropTable
DROP TABLE "salaries_paid";
