/*
  Warnings:

  - You are about to drop the `person` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `person`;

-- CreateTable
CREATE TABLE `persons` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `identity_number` VARCHAR(191) NOT NULL,
    `fullname` VARCHAR(191) NOT NULL,
    `date_of_birth` VARCHAR(191) NOT NULL,
    `place_of_birth` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `tax_number` VARCHAR(191) NOT NULL,
    `acc_name` VARCHAR(191) NOT NULL,
    `acc_number` VARCHAR(191) NOT NULL,
    `acc_bank_name` VARCHAR(191) NOT NULL,
    `acc_bank_code` VARCHAR(191) NOT NULL,
    `created_by` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
