-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_PhysicalActivitie" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'musculação'
);
INSERT INTO "new_PhysicalActivitie" ("id", "title") SELECT "id", "title" FROM "PhysicalActivitie";
DROP TABLE "PhysicalActivitie";
ALTER TABLE "new_PhysicalActivitie" RENAME TO "PhysicalActivitie";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
