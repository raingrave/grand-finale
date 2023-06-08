/*
  Warnings:

  - Added the required column `user_id` to the `PhysicalActivitie` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PhysicalActivitie" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "user_id" INTEGER NOT NULL,
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
