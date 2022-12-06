/*
  Warnings:

  - You are about to drop the `salary` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "salary";

-- CreateTable
CREATE TABLE "salaries_paid" (
    "s_id" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "payment_date" TEXT NOT NULL,

    CONSTRAINT "salaries_paid_pkey" PRIMARY KEY ("s_id")
);
