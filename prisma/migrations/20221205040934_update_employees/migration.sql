/*
  Warnings:

  - You are about to drop the column `Age` on the `employee` table. All the data in the column will be lost.
  - You are about to drop the column `full_name` on the `employee` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "employee" DROP COLUMN "Age",
DROP COLUMN "full_name";
