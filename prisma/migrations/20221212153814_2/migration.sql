/*
  Warnings:

  - You are about to drop the column `cardIdNum` on the `person` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `person` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `person` table. All the data in the column will be lost.
  - You are about to drop the column `firstName` on the `person` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `person` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `person` table. All the data in the column will be lost.
  - Added the required column `acc_bank_code` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `acc_bank_name` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `acc_name` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `acc_number` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `city` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_by` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `date_of_birth` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fullname` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `identity_number` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `place_of_birth` to the `person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tax_number` to the `person` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `person` DROP COLUMN `cardIdNum`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `email`,
    DROP COLUMN `firstName`,
    DROP COLUMN `lastName`,
    DROP COLUMN `password`,
    ADD COLUMN `acc_bank_code` VARCHAR(191) NOT NULL,
    ADD COLUMN `acc_bank_name` VARCHAR(191) NOT NULL,
    ADD COLUMN `acc_name` VARCHAR(191) NOT NULL,
    ADD COLUMN `acc_number` VARCHAR(191) NOT NULL,
    ADD COLUMN `city` VARCHAR(191) NOT NULL,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `created_by` VARCHAR(191) NOT NULL,
    ADD COLUMN `date_of_birth` VARCHAR(191) NOT NULL,
    ADD COLUMN `fullname` VARCHAR(191) NOT NULL,
    ADD COLUMN `identity_number` VARCHAR(191) NOT NULL,
    ADD COLUMN `place_of_birth` VARCHAR(191) NOT NULL,
    ADD COLUMN `tax_number` VARCHAR(191) NOT NULL;
