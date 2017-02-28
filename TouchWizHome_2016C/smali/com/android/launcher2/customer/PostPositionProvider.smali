.class public Lcom/android/launcher2/customer/PostPositionProvider;
.super Landroid/content/ContentProvider;
.source "PostPositionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;,
        Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;,
        Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;
    }
.end annotation


# static fields
.field private static final CALL_CLEAR_AREA:Ljava/lang/String; = "clearArea"

.field private static final CALL_GRID_SIZE:Ljava/lang/String; = "gridSize"

.field private static final COL_APPS_ADD:Ljava/lang/String; = "isAppsAdd"

.field private static final COL_APPS_CELL_ORDER:Ljava/lang/String; = "appsCellOrder"

.field private static final COL_APPS_FOLDER_NAME:Ljava/lang/String; = "appsFolderName"

.field private static final COL_APPS_FORCE_ATOZ:Ljava/lang/String; = "appsForceAtoZ"

.field private static final COL_APPS_INDEX:Ljava/lang/String; = "appsIndex"

.field private static final COL_APPS_PRELOADED_FOLDER:Ljava/lang/String; = "isAppsPreloadedFolder"

.field private static final COL_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field private static final COL_HOME_ADD:Ljava/lang/String; = "isHomeAdd"

.field private static final COL_HOME_CELL_X:Ljava/lang/String; = "homeCellX"

.field private static final COL_HOME_CELL_Y:Ljava/lang/String; = "homeCellY"

.field private static final COL_HOME_FOLDER_NAME:Ljava/lang/String; = "homeFolderName"

.field private static final COL_HOME_INDEX:Ljava/lang/String; = "homeIndex"

.field private static final COL_HOME_NEW_PAGE:Ljava/lang/String; = "isHomeNewPage"

.field private static final COL_HOME_PRELOADED_FOLDER:Ljava/lang/String; = "isHomePreloadedFolder"

.field private static final COL_HOME_REPLACE:Ljava/lang/String; = "isHomeReplace"

.field private static final COL_HOME_SHORTCUT_ICON:Ljava/lang/String; = "homeShortcutIcon"

.field private static final COL_HOME_SHORTCUT_TITLE:Ljava/lang/String; = "homeShortcutTitle"

.field private static final COL_HOME_WIDGET_SPAN_X:Ljava/lang/String; = "homeWidgetSpanX"

.field private static final COL_HOME_WIDGET_SPAN_Y:Ljava/lang/String; = "homeWidgetSpanY"

.field private static final COL_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final COL_REMOVE_AFTER_POSITION:Ljava/lang/String; = "removeAfterPosition"

.field private static final COL_RESULT:Ljava/lang/String; = "result"

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final DATABASE_NAME:Ljava/lang/String; = "postposition.db"

.field static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final IDX_APPS_ADD:B = 0xet

.field private static final IDX_APPS_CELL_ORDER:B = 0x12t

.field private static final IDX_APPS_FOLDER_NAME:B = 0x10t

.field private static final IDX_APPS_FORCE_ATOZ:B = 0x13t

.field private static final IDX_APPS_INDEX:B = 0x11t

.field private static final IDX_APPS_PRELOADED_FOLDER:B = 0xft

.field private static final IDX_COMPONENT_NAME:B = 0x0t

.field private static final IDX_HOME_ADD:B = 0x2t

.field private static final IDX_HOME_CELL_X:B = 0x8t

.field private static final IDX_HOME_CELL_Y:B = 0x9t

.field private static final IDX_HOME_FOLDER_NAME:B = 0x4t

.field private static final IDX_HOME_INDEX:B = 0x7t

.field private static final IDX_HOME_NEW_PAGE:B = 0x5t

.field private static final IDX_HOME_PRELOADED_FOLDER:B = 0x3t

.field private static final IDX_HOME_REPLACE:B = 0x6t

.field private static final IDX_ITEM_TYPE:B = 0x1t

.field private static final IDX_REMOVE_AFTER_POSITION:B = 0x14t

.field private static final IDX_SHORTCUT_ICON:B = 0xdt

.field private static final IDX_SHORTCUT_TITLE:B = 0xct

.field private static final IDX_WIDGET_SPAN_X:B = 0xat

.field private static final IDX_WIDGET_SPAN_Y:B = 0xbt

.field static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.launcher.provider.PostPosition"

.field static final TABLE_NAME:Ljava/lang/String; = "PositionInfo"

.field private static final TAG:Ljava/lang/String; = "CUSTOMER.PostPosition"

.field static final URL:Ljava/lang/String; = "content://com.sec.android.launcher.provider.PostPosition/PositionInfo"


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDBHelper:Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;

.field private mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

.field private mWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.launcher.provider.PostPosition/PositionInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/customer/PostPositionProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/customer/PostPositionProvider;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private getItemRecordFromCusor(Landroid/database/Cursor;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;-><init>(Lcom/android/launcher2/customer/PostPositionProvider;Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v6

    :goto_0
    iput-boolean v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v6

    :goto_1
    iput-boolean v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomePreloadFolder:Z

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    move v1, v6

    :goto_2
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    move v2, v6

    :goto_3
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->setHomePosition(ZZIII)V

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->setWidgetSpanXY(II)V

    iget v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v2, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->setShortcutInfo(Ljava/lang/String;[B)V

    :cond_0
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    move v1, v6

    :goto_4
    iput-boolean v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsAdd:Z

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_6

    move v1, v6

    :goto_5
    iput-boolean v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsPreloadFolder:Z

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->setAppsPosition(II)V

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_7

    move v1, v6

    :goto_6
    iput-boolean v1, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsForceAtoZ:Z

    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_8

    :goto_7
    iput-boolean v6, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->RemoveAfterPosition:Z

    return-object v0

    :cond_1
    move v1, v7

    goto/16 :goto_0

    :cond_2
    move v1, v7

    goto/16 :goto_1

    :cond_3
    move v1, v7

    goto/16 :goto_2

    :cond_4
    move v2, v7

    goto/16 :goto_3

    :cond_5
    move v1, v7

    goto :goto_4

    :cond_6
    move v1, v7

    goto :goto_5

    :cond_7
    move v1, v7

    goto :goto_6

    :cond_8
    move v6, v7

    goto :goto_7
.end method

.method private updateWidgetList()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT componentName FROM PositionInfo WHERE itemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v4}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND result=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "CUSTOMER.PostPosition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasItem widget : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    move-object v2, v1

    :goto_2
    return-object v2

    :sswitch_0
    const-string v8, "clearArea"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v8, "gridSize"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v7

    goto :goto_0

    :pswitch_0
    const-string v5, "clearArea"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    array-length v5, v3

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    aget v5, v3, v7

    aget v7, v3, v9

    const/4 v8, 0x3

    aget v8, v3, v8

    const/4 v9, 0x4

    aget v9, v3, v9

    invoke-direct {v0, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v5

    aget v6, v3, v6

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher2/customer/PostPosition;->deleteHomeArea(ILandroid/graphics/Rect;)V

    goto :goto_1

    :pswitch_1
    new-array v4, v9, [I

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v7}, Landroid/os/Bundle;-><init>(I)V

    const-string v5, "gridSize"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object v2, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bc8f386 -> :sswitch_0
        0x12f4cc67 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PositionInfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->updateWidgetList()V

    return v0
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM PositionInfo WHERE componentName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public disableHomeNewPage(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE PositionInfo SET isHomeNewPage=0  WHERE homeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isHomeNewPage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method getDatabaseHelper()Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDBHelper:Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDBHelper:Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDBHelper:Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;

    return-object v0
.end method

.method public getItemRecord(Ljava/lang/String;Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    const-string v4, "CUSTOMER.PostPosition"

    const-string v5, "getItemRecord(), database isn\'t ready state."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    if-ne p2, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PositionInfo WHERE componentName LIKE \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND result=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_3

    const/16 v4, 0xe

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PositionInfo WHERE componentName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/customer/PostPositionProvider;->getItemRecordFromCusor(Landroid/database/Cursor;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    iget-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-virtual {v4}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->isValid()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "CUSTOMER.PostPosition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method public getItemRecordsNeedToPosition()[Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "SELECT * FROM PositionInfo WHERE result=0"

    iget-object v5, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v3, v5, [Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/customer/PostPositionProvider;->getItemRecordFromCusor(Landroid/database/Cursor;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    move-result-object v5

    aput-object v5, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasWidgetToAdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v3, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.easyMover.Agent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.android.app.omcagent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "PositionInfo"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-string v3, "CUSTOMER.PostPosition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", insert : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "componentName"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPosition;->getSharedPrefInfo()Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->isEnabled()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPosition;->getSharedPrefInfo()Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-result-object v3

    const-wide/16 v8, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->init(J)V

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPosition;->checkAndEnableProvider()V

    :cond_1
    const-wide/16 v6, 0x0

    const-string v3, "itemType"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "itemType"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_2
    sget-object v3, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v3}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    const-string v8, "componentName"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "componentName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->values()[Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v8

    long-to-int v9, v6

    aget-object v8, v8, v9

    invoke-virtual {p0, v3, v8}, Lcom/android/launcher2/customer/PostPositionProvider;->getItemRecord(Ljava/lang/String;Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v3, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/customer/PostPosition;->runHomeAdd(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V

    :cond_5
    sget-object v3, Lcom/android/launcher2/customer/PostPositionProvider;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v3

    :cond_6
    const-string v3, "CUSTOMER.PostPosition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SAPP doesn\'t alllow to insert item for your app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "Provider onCreated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher2/customer/PostPosition;->setProvider(Lcom/android/launcher2/customer/PostPositionProvider;)V

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPosition;->checkAndEnableProvider()V

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/customer/PostPositionProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->updateWidgetList()V

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v5, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "PositionInfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v8
.end method

.method public resetItem(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE PositionInfo SET result=0 WHERE componentName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PositionInfo"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
