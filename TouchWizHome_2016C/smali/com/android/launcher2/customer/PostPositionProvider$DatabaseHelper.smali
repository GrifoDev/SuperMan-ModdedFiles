.class Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PostPositionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/customer/PostPositionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "postposition.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, " CREATE TABLE PositionInfo (componentName TEXT PRIMARY KEY NOT NULL, itemType INTEGER DEFAULT 0, isHomeAdd BOOLEAN NOT NULL DEFAULT 0, isHomePreloadedFolder BOOLEAN DEFAULT 0, homeFolderName TEXT, isHomeNewPage BOOLEAN DEFAULT 0, isHomeReplace BOOLEAN DEFAULT 0, homeIndex INTEGER DEFAULT -1, homeCellX INTEGER DEFAULT -1, homeCellY INTEGER DEFAULT -1, homeWidgetSpanX INTEGER DEFAULT -1, homeWidgetSpanY INTEGER DEFAULT -1, homeShortcutTitle TEXT, homeShortcutIcon BLOB, isAppsAdd BOOLEAN NOT NULL DEFAULT 0, isAppsPreloadedFolder BOOLEAN DEFAULT 0, appsFolderName TEXT, appsIndex INTEGER DEFAULT -1, appsCellOrder INTEGER DEFAULT -1, appsForceAtoZ BOOLEAN DEFAULT 0, removeAfterPosition BOOLEAN DEFAULT 0, result BOOLEAN DEFAULT 0)"

    const-string v1, " CREATE TABLE PositionInfo (componentName TEXT PRIMARY KEY NOT NULL, itemType INTEGER DEFAULT 0, isHomeAdd BOOLEAN NOT NULL DEFAULT 0, isHomePreloadedFolder BOOLEAN DEFAULT 0, homeFolderName TEXT, isHomeNewPage BOOLEAN DEFAULT 0, isHomeReplace BOOLEAN DEFAULT 0, homeIndex INTEGER DEFAULT -1, homeCellX INTEGER DEFAULT -1, homeCellY INTEGER DEFAULT -1, homeWidgetSpanX INTEGER DEFAULT -1, homeWidgetSpanY INTEGER DEFAULT -1, homeShortcutTitle TEXT, homeShortcutIcon BLOB, isAppsAdd BOOLEAN NOT NULL DEFAULT 0, isAppsPreloadedFolder BOOLEAN DEFAULT 0, appsFolderName TEXT, appsIndex INTEGER DEFAULT -1, appsCellOrder INTEGER DEFAULT -1, appsForceAtoZ BOOLEAN DEFAULT 0, removeAfterPosition BOOLEAN DEFAULT 0, result BOOLEAN DEFAULT 0)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS PositionInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
