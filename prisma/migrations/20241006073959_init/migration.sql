/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Places` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `PlaceName` to the `Special` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `special` ADD COLUMN `PlaceName` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Places_name_key` ON `Places`(`name`);

-- AddForeignKey
ALTER TABLE `Special` ADD CONSTRAINT `Special_PlaceName_fkey` FOREIGN KEY (`PlaceName`) REFERENCES `Places`(`name`) ON DELETE RESTRICT ON UPDATE CASCADE;
