-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PhysicalActivitie" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "finished" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_PhysicalActivitie" ("finished", "id", "title", "type") SELECT "finished", "id", "title", "type" FROM "PhysicalActivitie";
DROP TABLE "PhysicalActivitie";
ALTER TABLE "new_PhysicalActivitie" RENAME TO "PhysicalActivitie";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
