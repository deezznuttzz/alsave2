/*
  Warnings:

  - You are about to alter the column `subscription` on the `user` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Json`.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `subscription` JSON NULL;
