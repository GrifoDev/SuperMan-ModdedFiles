.class public abstract Landroid/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final DEBUG_STRICT_READONLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mMinimumSupportedVersion:I

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iput p4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    iput-object p6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    const/4 v0, 0x0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mMinimumSupportedVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method private getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    iput-object v7, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "getDatabase called recursively"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v5

    :cond_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v4, v5, :cond_e

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Landroid/database/sqlite/SQLiteException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t upgrade read-only database from version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v1, :cond_5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v1, v6, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v5

    :cond_6
    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_7
    :try_start_2
    iget-object v7, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    :goto_1
    iget-object v9, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v10, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_8
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v2

    if-eqz p1, :cond_9

    :try_start_3
    throw v2

    :cond_9
    sget-object v5, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for writing (will try read-only):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    const/4 v8, 0x1

    invoke-static {v3, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    if-lez v4, :cond_d

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mMinimumSupportedVersion:I

    if-ge v4, v5, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v1, :cond_b

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v1, v6, :cond_b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    return-object v5

    :cond_c
    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to delete obsolete database "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_11

    :try_start_5
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_e
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Opened "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in read-only mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setContext(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v1, :cond_10

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v1, v5, :cond_10

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    return-object v1

    :cond_11
    :try_start_7
    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le v4, v5, :cond_12

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v1, v4, v5}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_12
    :try_start_9
    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v1, v4, v5}, Landroid/database/sqlite/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
