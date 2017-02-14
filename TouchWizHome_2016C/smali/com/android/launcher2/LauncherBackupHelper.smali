.class public Lcom/android/launcher2/LauncherBackupHelper;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final APPWIDGET_ID_INDEX:I = 0xa

.field private static final CELLX_INDEX:I = 0x4

.field private static final CELLY_INDEX:I = 0x5

.field private static final CONTAINER_INDEX:I = 0x2

.field private static final DEBUG:Z = false

.field private static final FAVORITE_PROJECTION:[Ljava/lang/String;

.field private static final ICON_INDEX:I = 0xf

.field private static final ICON_PACKAGE_INDEX:I = 0xc

.field private static final ICON_RESOURCE_INDEX:I = 0xd

.field private static final ICON_TYPE_INDEX:I = 0xb

.field private static final ID_INDEX:I = 0x0

.field private static final ID_MODIFIED:I = 0x13

.field private static final INTENT_INDEX:I = 0x9

.field private static final ITEM_TYPE_INDEX:I = 0x1

.field private static final JOURNAL_KEY:Ljava/lang/String; = "#"

.field private static final MAX_ICONS_PER_PASS:I = 0xa

.field private static final MAX_JOURNAL_SIZE:I = 0xf4240

.field private static final MAX_WIDGETS_PER_PASS:I = 0x5

.field private static final SCREEN_INDEX:I = 0x3

.field private static final SPANX_INDEX:I = 0x6

.field private static final SPANY_INDEX:I = 0x7

.field private static final TAG:Ljava/lang/String; = "LauncherBackupHelper"

.field private static final TITLE_INDEX:I = 0x8

.field private static final VERBOSE:Z


# instance fields
.field private mBackupDataWasUpdated:Z

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBuffer:[B

.field private final mContext:Landroid/content/Context;

.field private mDeviceProfileData:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

.field private final mExistingKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/backup/BackupProtos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBackupRestoreTime:J

.field restoreSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "iconMovieUri"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "festival"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    iput-object p1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    return-void
.end method

.method private applyJournal(Lcom/android/launcher2/backup/BackupProtos$Journal;)V
    .locals 6

    iget-wide v2, p1, Lcom/android/launcher2/backup/BackupProtos$Journal;->t:J

    iput-wide v2, p0, Lcom/android/launcher2/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p1, Lcom/android/launcher2/backup/BackupProtos$Journal;->key:[Lcom/android/launcher2/backup/BackupProtos$Key;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/launcher2/backup/BackupProtos$Journal;->key:[Lcom/android/launcher2/backup/BackupProtos$Key;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private backupFavorites(Landroid/app/backup/BackupDataOutput;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher2/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v1, 0x13

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v1, 0x1

    invoke-direct {p0, v1, v8, v9}, Lcom/android/launcher2/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher2/backup/BackupProtos$Key;

    move-result-object v10

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v10}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "LauncherBackupHelper"

    const-string v2, "   "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/launcher2/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v1, v12, v2

    if-ltz v1, :cond_1

    :cond_0
    invoke-direct {p0, v7}, Lcom/android/launcher2/LauncherBackupHelper;->packFavorite(Landroid/database/Cursor;)Lcom/android/launcher2/backup/BackupProtos$Favorite;

    move-result-object v1

    invoke-direct {p0, v10, v1, p1}, Lcom/android/launcher2/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher2/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :try_start_1
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favorite already backup up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private backupIcons(Landroid/app/backup/BackupDataOutput;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v14, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v22

    const/4 v11, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(itemType=0 OR itemType=1) AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher2/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :try_start_0
    const-string v5, "LauncherBackupHelper"

    const-string v6, "   "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "LauncherBackupHelper"

    const-string v6, "< backupIcons() >"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v5, 0x9

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/16 v21, 0x0

    const/4 v10, 0x0

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x8

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_2

    const/4 v5, 0x3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/launcher2/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Key;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "already saved icon "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    :try_start_2
    const-string v5, "LauncherBackupHelper"

    const-string v6, "   "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    :try_start_3
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty intent on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v15

    :try_start_4
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid URI on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_1

    :try_start_5
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupUpIconCount: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    if-ge v11, v5, :cond_4

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saving icon : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v5

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v5, v12, v0, v1}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    if-eqz v23, :cond_1

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v5, v6, v8, v9}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1, v5}, Lcom/android/launcher2/LauncherBackupHelper;->packIcon(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Resource;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher2/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher2/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_4
    const-string v5, "LauncherBackupHelper"

    const-string v6, "deferring icon backup "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherBackupHelper;->dataChanged()V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v15

    :try_start_6
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to save application icon for favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Key;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/backup/BackupProtos$Key;->parseFrom([B)Lcom/android/launcher2/backup/BackupProtos$Key;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherBackupHelper;->checkKey(Lcom/android/launcher2/backup/BackupProtos$Key;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid key read from stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method private backupWidgets(Landroid/app/backup/BackupDataOutput;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v13, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v11, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemType=4 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher2/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :try_start_0
    const-string v5, "LauncherBackupHelper"

    const-string v6, "   "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "LauncherBackupHelper"

    const-string v6, "< backupWidgets() >"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v5, 0x9

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v15, 0x0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v5, "profile"

    invoke-virtual {v15, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    const/16 v21, 0x0

    const/16 v20, 0x0

    if-eqz v15, :cond_0

    :try_start_2
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/4 v10, 0x0

    if-eqz v20, :cond_4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/launcher2/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Key;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "provider : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_2

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key.name : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "already saved widget "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    const-string v5, "LauncherBackupHelper"

    const-string v6, "   "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    :catch_0
    move-exception v14

    :try_start_3
    const-string v5, "LauncherBackupHelper"

    const-string v6, "Invalid intent"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_4
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty intent on appwidget: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    if-eqz v10, :cond_3

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupWidgetCount: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    if-ge v11, v5, :cond_7

    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saving widget :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/LauncherBackupHelper;->packWidget(ILandroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/backup/BackupProtos$Widget;

    move-result-object v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher2/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_6
    const-string v5, "LauncherBackupHelper"

    const-string v6, "backupWidgets packWidget is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deferring widget backup "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherBackupHelper;->dataChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private checkKey(Lcom/android/launcher2/backup/BackupProtos$Key;)J
    .locals 6

    const-wide/32 v4, 0xffff

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget v1, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    iget-wide v2, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    iget-wide v2, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    iget-object v1, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private dataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    :cond_0
    const-string v0, "LauncherBackupHelper"

    const-string v1, "LauncherBackupHelper    dataChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method private getCurrentStateJournal()Lcom/android/launcher2/backup/BackupProtos$Journal;
    .locals 4

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Journal;-><init>()V

    iget-wide v2, p0, Lcom/android/launcher2/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iput-wide v2, v0, Lcom/android/launcher2/backup/BackupProtos$Journal;->t:J

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher2/backup/BackupProtos$Key;

    iput-object v1, v0, Lcom/android/launcher2/backup/BackupProtos$Journal;->key:[Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->initDeviceProfileData()Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    return-object v0
.end method

.method private getKey(IJ)Lcom/android/launcher2/backup/BackupProtos$Key;
    .locals 4

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Key;-><init>()V

    iput p1, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    iput-wide p2, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherBackupHelper;->checkKey(Lcom/android/launcher2/backup/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    return-object v0
.end method

.method private getKey(ILjava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Key;
    .locals 4

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Key;-><init>()V

    iput p1, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    iput-object p2, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherBackupHelper;->checkKey(Lcom/android/launcher2/backup/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    return-object v0
.end method

.method private getUserSelectionArg()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDeviceProfileData()Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    new-instance v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v4}, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;-><init>()V

    const/4 v8, 0x2

    new-array v1, v8, [I

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "favorites_homeOnly"

    iput-object v8, v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v2, v1, v10

    const/4 v8, 0x1

    aget v3, v1, v8

    iput v3, v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    iput v2, v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "screencount"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-gtz v6, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    :cond_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v6, v6, -0x1

    :cond_1
    iput v6, v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "homescreenindex"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v7, v7, -0x1

    :cond_2
    iput v7, v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    return-object v4

    :cond_3
    const-string v8, "favorites_homeApps"

    iput-object v8, v4, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private isBackupCompatible(Lcom/android/launcher2/backup/BackupProtos$Journal;)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    if-eqz v1, :cond_0

    iget v6, v1, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    if-nez v6, :cond_2

    :cond_0
    const-string v4, "LauncherBackupHelper"

    const-string v6, "isBackupCompatible(), oldProfile is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBackupCompatible(), backuped mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "favorites_homeApps"

    iget-object v7, v1, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBackupCompatible(), backuped grid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v6, v4

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v0, v3, v6

    const-string v8, "LauncherBackupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   support grid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v5

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/launcher2/backup/BackupProtos$Key;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launcherIsReady()Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher2/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v1, "LauncherBackupHelper"

    const-string v2, "launcherIsReady(), cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    :goto_0
    return v1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "LauncherBackupHelper"

    const-string v2, "launcherIsReady(), return false, Launcher.getInstance() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LauncherBackupHelper"

    const-string v2, "launcherIsReady(), return false, HomeOnly Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private packFavorite(Landroid/database/Cursor;)Lcom/android/launcher2/backup/BackupProtos$Favorite;
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v8, 0x0

    new-instance v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;

    invoke-direct {v2}, Lcom/android/launcher2/backup/BackupProtos$Favorite;-><init>()V

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->id:J

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    iget-wide v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    :cond_0
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    const/4 v8, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    const/16 v8, 0xb

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    const/16 v8, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iput-object v7, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    :cond_1
    const/16 v8, 0x9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iput-object v6, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    iget v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    if-ne v8, v13, :cond_4

    const/16 v8, 0xa

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    :cond_3
    :goto_1
    const-string v8, "LauncherBackupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packFavorite(), favorite: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v1

    const-string v8, "LauncherBackupHelper"

    const-string v9, "Invalid intent"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    iget v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    if-ne v8, v12, :cond_3

    iget v8, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    if-nez v8, :cond_6

    const/16 v8, 0xc

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iput-object v3, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    :cond_5
    const/16 v8, 0xd

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iput-object v4, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    :cond_6
    const/16 v8, 0xf

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v8, v0

    if-lez v8, :cond_3

    iput-object v0, v2, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    goto :goto_1
.end method

.method private packIcon(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Resource;
    .locals 2

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Resource;-><init>()V

    iput p1, v0, Lcom/android/launcher2/backup/BackupProtos$Resource;->dpi:I

    invoke-static {p2}, Lcom/android/launcher2/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    return-object v0
.end method

.method private packWidget(ILandroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/backup/BackupProtos$Widget;
    .locals 10

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, v5

    :cond_1
    if-nez v2, :cond_2

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/launcher2/backup/BackupProtos$Widget;

    invoke-direct {v4}, Lcom/android/launcher2/backup/BackupProtos$Widget;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v7, :cond_3

    new-instance v7, Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-direct {v7}, Lcom/android/launcher2/backup/BackupProtos$Resource;-><init>()V

    iput-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iget-object v7, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PkgResCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v7, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v0, v7, v8, v9}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-static {v1}, Lcom/android/launcher2/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    iget-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iput p1, v7, Lcom/android/launcher2/backup/BackupProtos$Resource;->dpi:I

    :cond_3
    const/4 v7, 0x2

    new-array v3, v7, [I

    sget-object v7, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v7, v2, v3}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    aget v7, v3, v7

    :goto_2
    iput v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    aget v7, v3, v7

    :goto_3
    iput v7, v4, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, -0x1

    goto :goto_2

    :cond_6
    const/4 v7, -0x1

    goto :goto_3
.end method

.method private static readCheckedBytes([BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v2, v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    iget-wide v2, v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v3, "checksum does not match"

    invoke-direct {v2, v3}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;->payload:[B

    return-object v2
.end method

.method private readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher2/backup/BackupProtos$Journal;
    .locals 12

    new-instance v5, Lcom/android/launcher2/backup/BackupProtos$Journal;

    invoke-direct {v5}, Lcom/android/launcher2/backup/BackupProtos$Journal;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    const v9, 0xf4240

    if-ge v0, v9, :cond_3

    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_1
    if-lez v0, :cond_2

    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v4, v1, v2, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-lez v7, :cond_1

    sub-int/2addr v0, v7

    add-int/2addr v2, v7

    :goto_2
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v9, "LauncherBackupHelper"

    const-string v10, "unexpected end of file while reading journal."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_4
    const-string v9, "LauncherBackupHelper"

    const-string v10, "readJournal(), IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/launcher2/backup/BackupProtos$Journal;->clear()Lcom/android/launcher2/backup/BackupProtos$Journal;

    :cond_2
    if-nez v8, :cond_3

    const-string v9, "LauncherBackupHelper"

    const-string v10, "could not find a valid journal"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v6, v3

    :try_start_6
    invoke-virtual {v5}, Lcom/android/launcher2/backup/BackupProtos$Journal;->clear()Lcom/android/launcher2/backup/BackupProtos$Journal;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_7
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    :catch_4
    move-exception v3

    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_3
    throw v9

    :catch_5
    move-exception v3

    const-string v10, "LauncherBackupHelper"

    const-string v11, "failed to close the journal"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private restoreFavorite(Lcom/android/launcher2/backup/BackupProtos$Key;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher2/LauncherBackupHelper;->unpackFavorite([BI)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "LauncherBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreFavorite(), ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private restoreIcon(Lcom/android/launcher2/backup/BackupProtos$Key;[BI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v4, Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-direct {v4}, Lcom/android/launcher2/backup/BackupProtos$Resource;-><init>()V

    invoke-direct {p0, v4, p2, p3}, Lcom/android/launcher2/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/backup/BackupProtos$Resource;

    iget-object v4, v1, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    iget-object v5, v1, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    array-length v5, v5

    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to unpack icon for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreIcon(), saving restored icon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreIcon(), saving restored icon : %component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "icon"

    iget-object v5, v1, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v6, "intent like ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%component="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreIcon(), result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private restoreWidget(Lcom/android/launcher2/backup/BackupProtos$Key;[BI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v4, Lcom/android/launcher2/backup/BackupProtos$Widget;

    invoke-direct {v4}, Lcom/android/launcher2/backup/BackupProtos$Widget;-><init>()V

    invoke-direct {p0, v4, p2, p3}, Lcom/android/launcher2/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/backup/BackupProtos$Widget;

    iget-object v4, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iget-object v4, v4, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iget-object v4, v4, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    iget-object v5, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iget-object v5, v5, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    array-length v5, v5

    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to unpack widget icon for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreWidget(), saving unpack widget icon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreWidget(), saving restored icon : %component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "icon"

    iget-object v5, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iget-object v5, v5, Lcom/android/launcher2/backup/BackupProtos$Resource;->data:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v6, "intent like ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%component="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v4, "LauncherBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreWidget(), result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private unpackFavorite([BI)Landroid/content/ContentValues;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    new-instance v5, Lcom/android/launcher2/backup/BackupProtos$Favorite;

    invoke-direct {v5}, Lcom/android/launcher2/backup/BackupProtos$Favorite;-><init>()V

    invoke-direct {p0, v5, p1, p2}, Lcom/android/launcher2/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_id"

    iget-wide v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "screen"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "container"

    iget-wide v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cellX"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellY"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanX"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanY"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    if-ne v5, v8, :cond_1

    const-string v5, "iconType"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    if-nez v5, :cond_0

    const-string v5, "iconPackage"

    iget-object v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "iconResource"

    iget-object v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v5, "icon"

    iget-object v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    iget-object v5, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "title"

    iget-object v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v5, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "intent"

    iget-object v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v5, "itemType"

    iget v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    const-string v5, "profileId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v5, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    const-string v5, "appWidgetId"

    iget-wide v6, v0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "restored"

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    return-object v4

    :cond_3
    const-string v5, "title"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v5, "restored"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/android/launcher2/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    return-object p1
.end method

.method private writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 4

    new-instance v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;-><init>()V

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;->payload:[B

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v2, v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher2/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    return-object v2
.end method

.method private writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher2/backup/BackupProtos$Journal;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v4, "LauncherBackupHelper"

    const-string v5, "failed to write backup journal"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private writeRowToBackup(Lcom/android/launcher2/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher2/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method private writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p3, p1, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v1, v0

    invoke-virtual {p3, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blob.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12

    const-string v8, "LauncherBackupHelper"

    const-string v9, "    "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "LauncherBackupHelper"

    const-string v9, "performBackup()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherBackupHelper;->readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher2/backup/BackupProtos$Journal;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->launcherIsReady()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->dataChanged()V

    invoke-direct {p0, p3, v2}, Lcom/android/launcher2/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher2/backup/BackupProtos$Journal;)V

    const-string v8, "LauncherBackupHelper"

    const-string v9, "return,   !launcherIsReady()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->initDeviceProfileData()Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    const-string v8, "LauncherBackupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastBackupTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/launcher2/backup/BackupProtos$Journal;->t:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherBackupHelper;->applyJournal(Lcom/android/launcher2/backup/BackupProtos$Journal;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;)V

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherBackupHelper;->backupIcons(Landroid/app/backup/BackupDataOutput;)V

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;)V

    const-string v8, "LauncherBackupHelper"

    const-string v9, "    "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-direct {p0, v3}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v8, "LauncherBackupHelper"

    const-string v9, "launcher backup has failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/launcher2/LauncherBackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "LauncherBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dropping deleted item "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    invoke-virtual {p2, v0, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    goto :goto_3

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    iget-boolean v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-nez v8, :cond_4

    iget-object v8, v2, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    invoke-static {v8}, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    invoke-static {v9}, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    :cond_4
    const-string v8, "LauncherBackupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BackupDataWasUpdated : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", LastBackupRestoreTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/launcher2/LauncherBackupHelper;->mLastBackupRestoreTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newBackupTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-eqz v8, :cond_6

    iput-wide v4, p0, Lcom/android/launcher2/LauncherBackupHelper;->mLastBackupRestoreTime:J

    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher2/backup/BackupProtos$Journal;

    move-result-object v6

    const-string v8, "#"

    invoke-direct {p0, v8, v6, p2}, Lcom/android/launcher2/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    goto/16 :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    const-string v8, "LauncherBackupHelper"

    const-string v9, "Nothing was written during backup"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10

    const-string v6, "LauncherBackupHelper"

    const-string v7, "    "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreEntity(), restoreSuccessful: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    array-length v6, v6

    if-ge v6, v2, :cond_2

    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v2}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    move-result v1

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v6, "#"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v7, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-direct {p0, v6}, Lcom/android/launcher2/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher2/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " received after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "LauncherBackupHelper"

    const-string v7, "JOURNAL_KEY, !mKeys.isEmpty() restoreSuccessful = false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "LauncherBackupHelper"

    const-string v7, "ignoring unparsable backup entry"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v4, Lcom/android/launcher2/backup/BackupProtos$Journal;

    invoke-direct {v4}, Lcom/android/launcher2/backup/BackupProtos$Journal;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    invoke-static {v6, v2}, Lcom/android/launcher2/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    const-string v6, "LauncherBackupHelper"

    const-string v7, "JOURNAL_KEY, applyJournal()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/launcher2/LauncherBackupHelper;->applyJournal(Lcom/android/launcher2/backup/BackupProtos$Journal;)V

    invoke-direct {p0, v4}, Lcom/android/launcher2/LauncherBackupHelper;->isBackupCompatible(Lcom/android/launcher2/backup/BackupProtos$Journal;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBackupCompatible(), restoreSuccessful: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    iget v6, v6, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    iget v7, v7, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    const-string v8, "_homeApps"

    invoke-static {v6, v7, v8}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;ILjava/lang/String;)V

    :cond_4
    iget-object v6, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    iget v6, v6, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    iget v7, v7, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    invoke-static {v6, v7}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    iget v7, v7, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    iget-object v8, v4, Lcom/android/launcher2/backup/BackupProtos$Journal;->profile:Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    iget v8, v8, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher2/backup/BackupProtos$Key;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v5, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    packed-switch v6, :pswitch_data_0

    :pswitch_1
    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown restore entity type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher2/LauncherBackupHelper;->restoreFavorite(Lcom/android/launcher2/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher2/LauncherBackupHelper;->restoreIcon(Lcom/android/launcher2/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/launcher2/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher2/LauncherBackupHelper;->restoreWidget(Lcom/android/launcher2/backup/BackupProtos$Key;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher2/backup/BackupProtos$Journal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher2/backup/BackupProtos$Journal;)V

    return-void
.end method
