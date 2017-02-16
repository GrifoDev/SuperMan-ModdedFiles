.class public abstract Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;
.super Ljava/lang/Object;
.source "SemSQLiteSecureOpenHelper.java"


# static fields
.field private static final DEBUG_STRICT_READONLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 66
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
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

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 93
    iput p4, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    .line 94
    iput-object p5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 87
    return-void
.end method

.method public static final changeDatabasePassword(Landroid/database/sqlite/SQLiteDatabase;[B)I
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "newPassword"    # [B

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->changeDBPassword([B)I

    move-result v0

    return v0
.end method

.method public static final convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .locals 0
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V

    .line 362
    return-void
.end method

.method public static final convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .locals 0
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V

    .line 379
    return-void
.end method

.method private getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .param p1, "writable"    # Z
    .param p2, "password"    # [B

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 156
    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    iput-object v6, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 166
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v5, :cond_3

    .line 167
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "getDatabase called recursively"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v5

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 172
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 174
    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 178
    :cond_4
    const/4 v0, 0x0

    .line 181
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 182
    const/4 v5, 0x0

    invoke-static {v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    if-eqz v0, :cond_b

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 210
    .local v4, "version":I
    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    if-eq v4, v5, :cond_a

    .line 211
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 212
    new-instance v5, Landroid/database/sqlite/SQLiteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t upgrade read-only database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    const-string/jumbo v7, " to "

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    iget v7, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    const-string/jumbo v7, ": "

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    iget-object v7, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "version":I
    :catchall_0
    move-exception v5

    .line 244
    iput-boolean v8, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 245
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v6, :cond_6

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 243
    :cond_6
    throw v5

    .line 192
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 196
    sget-object v5, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "DB Directory does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 199
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v6, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    const/high16 v7, 0x10000000

    invoke-static {v3, v5, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_0

    .line 201
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbFile":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    throw v2

    .line 216
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "version":I
    :cond_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    if-nez v4, :cond_d

    .line 219
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 227
    :goto_1
    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    :cond_a
    invoke-virtual {p0, v0}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 236
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 237
    sget-object v5, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Opened "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in read-only mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v4    # "version":I
    :cond_b
    iput-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    iput-boolean v8, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 245
    if-eqz v0, :cond_c

    iget-object v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v5, :cond_c

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 242
    :cond_c
    return-object v0

    .line 221
    .restart local v4    # "version":I
    :cond_d
    :try_start_5
    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    if-le v4, v5, :cond_e

    .line 222
    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 229
    :catchall_1
    move-exception v5

    .line 230
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 229
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    :cond_e
    :try_start_7
    iget v5, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mIsInitializing:Z

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

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 255
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "password"    # [B

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "password"    # [B

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/database/sqlite/SemSQLiteSecureOpenHelper;->getDatabaseLocked(Z[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 281
    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 330
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string/jumbo v2, " to "

    .line 330
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
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 347
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
