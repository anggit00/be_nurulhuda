/*
  Warnings:

  - You are about to alter the column `identity_number` on the `person` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `person` MODIFY `identity_number` INTEGER NOT NULL;
