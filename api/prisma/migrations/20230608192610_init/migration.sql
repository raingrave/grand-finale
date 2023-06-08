/*
  Warnings:

  - You are about to drop the column `user_id` on the `PhysicalActivitie` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PhysicalActivitie" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "finished" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_PhysicalActivitie" ("createdAt", "finished", "id", "title", "type") SELECT "createdAt", "finished", "id", "title", "type" FROM "PhysicalActivitie";
DROP TABLE "PhysicalActivitie";
ALTER TABLE "new_PhysicalActivitie" RENAME TO "PhysicalActivitie";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
