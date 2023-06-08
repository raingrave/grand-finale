/*
  Warnings:

  - You are about to drop the column `createdAt` on the `PhysicalActivitie` table. All the data in the column will be lost.
  - You are about to drop the column `endDate` on the `PhysicalActivitie` table. All the data in the column will be lost.
  - You are about to drop the column `startDate` on the `PhysicalActivitie` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `PhysicalActivitie` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `PhysicalActivitie` table. All the data in the column will be lost.
  - Added the required column `title` to the `PhysicalActivitie` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PhysicalActivitie" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL
);
INSERT INTO "new_PhysicalActivitie" ("id") SELECT "id" FROM "PhysicalActivitie";
DROP TABLE "PhysicalActivitie";
ALTER TABLE "new_PhysicalActivitie" RENAME TO "PhysicalActivitie";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
