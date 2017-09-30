.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String;

.field private static final MAX_CACHE_ENTRIES:I = 0xc8

.field private static final MAX_CACHE_ENTRY_SIZE:I = 0x1f4

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field public static final TABLE_GLOBAL:Ljava/lang/String; = "global"

.field private static final TAG:Ljava/lang/String;

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    const-string v1, "global"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    const-string v0, "_dummy"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private static bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkWritePermissions(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnableSettingPermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "global"

    iget-object v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;-><init>(Landroid/net/Uri;)V

    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->checkWritePermissions(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;)V

    iget-object v3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->cacheForTable(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->isRedundantSetValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    invoke-static {v3, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->populate(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Landroid/content/ContentValues;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sendNotify(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private lookupValue(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache is null: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v0, v1, :cond_3

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->fullyMatchesDisk()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    monitor-exit p2

    goto :goto_0

    :cond_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {p2, p3, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_1
    :try_start_4
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    const-string v3, "settings lookup error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v9

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static open(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "notify"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification suppressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cacheForTable(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;
    .locals 1

    const-string v0, "global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "GET_global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "global"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->lookupValue(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-nez p3, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnableSettingPermissionCheck()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PUT_global"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_put(global:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call() with invalid method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "close."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->close()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCache(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->cacheForTable(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->evictAll()V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v1, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    instance-of v0, v1, Landroid/database/AbstractCursor;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/database/AbstractCursor;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/database/AbstractCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    const-string v2, "Incompatible cursor derivation!"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
