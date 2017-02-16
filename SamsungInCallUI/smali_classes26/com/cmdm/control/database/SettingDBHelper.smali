.class public Lcom/cmdm/control/database/SettingDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "caixiang_setting.db"

.field static final TAG:Ljava/lang/String; = "SettingDBHelper"

.field private static final aR:I = 0x9

.field private static aU:Lcom/cmdm/control/database/SettingDBHelper;

.field public static final btLock:[B


# instance fields
.field private aS:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "caixiang_setting.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method

.method private aW()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 147
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/SettingDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v1, Lcom/cmdm/control/database/SettingDBHelper;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/cmdm/control/database/SettingDBHelper;->aU:Lcom/cmdm/control/database/SettingDBHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/cmdm/control/database/SettingDBHelper;

    invoke-direct {v0, p0}, Lcom/cmdm/control/database/SettingDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmdm/control/database/SettingDBHelper;->aU:Lcom/cmdm/control/database/SettingDBHelper;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lcom/cmdm/control/database/SettingDBHelper;->aU:Lcom/cmdm/control/database/SettingDBHelper;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 151
    return-void
.end method

.method public clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    const-string v0, "caixiang_setting"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/SettingDBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/SettingDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public clearSettingDBHelper()Z
    .locals 3

    .prologue
    .line 56
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 57
    .local v0, "isClear":Ljava/lang/Boolean;
    sget-object v2, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDB()V

    .line 59
    iget-object v1, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/SettingDBHelper;->clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 57
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 57
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 0

    .prologue
    .line 44
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 450
    .local v1, "lastChangeCount":I
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDB()V

    .line 453
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->beginTransaction()V

    .line 454
    iget-object v2, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 455
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->endTransaction()V

    .line 461
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 456
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v1

    .line 467
    :goto_0
    return v2

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SettingDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->endTransaction()V

    .line 461
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 450
    monitor-exit v3

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v2

    .line 460
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->endTransaction()V

    .line 461
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 462
    throw v2

    .line 450
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 464
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 159
    return-void
.end method

.method public excute(Ljava/lang/String;)V
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 422
    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDB()V

    .line 425
    iget-object v1, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 422
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :goto_1
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "SettingDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 429
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 422
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 432
    :catch_1
    move-exception v1

    goto :goto_1

    .line 428
    :catchall_1
    move-exception v1

    .line 429
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 430
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getWritableDB()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    :cond_1
    return-void
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 169
    const-wide/16 v2, -0x1

    .line 171
    .local v2, "l":J
    :try_start_0
    sget-object v4, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDB()V

    .line 174
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->beginTransaction()V

    .line 175
    iget-object v1, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 176
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->endTransaction()V

    .line 181
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 171
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :goto_1
    return-wide v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "SettingDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->endTransaction()V

    .line 181
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 171
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 184
    :catch_1
    move-exception v1

    goto :goto_1

    .line 179
    :catchall_1
    move-exception v1

    .line 180
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->endTransaction()V

    .line 181
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 182
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public insert(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "insertSql"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDB()V

    .line 201
    iget-object v1, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 198
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SettingDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 198
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 208
    :catch_1
    move-exception v1

    goto :goto_1

    .line 204
    :catchall_1
    move-exception v1

    .line 205
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 206
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_setting (autoid integer primary key autoincrement ,isfirst text not null ,afterCalling text default 0 ,contactui text default 1 ,savelogin text default 0 ,galleryguide text default 1 ,isUpdateContact text default 0 ,showRing text default 1 ,mode text default 7 ,phone_num text default null ,password text default null ,isMatch text default 1 ,updatemode text default 0 ,loginmode text default 1 ,guidemask text default 1 ,showstyle text default 0 ,username text default null ,signname text default null ,member text default 0 ,trimMember text default 0 ,diypath text default null ,truck text default 1 ,defaultSystemUrl text default null ,defaultSystemContentID text default null ,defaultUrl text default null ,isOpenTextTrim text default 0 ,last_time datetime default (datetime(\'now\', \'localtime\')) ,shortbind text default 1 ,woyaoxiu text default 1 ,sendcaiman text default 1 ,serverAddress text default 1 ,clientid text default null ,clientKey text default null );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 117
    const-string v0, "SettingDBHelper"

    const-string v1, "\u4e2a\u4eba\u8bbe\u7f6e\u4e2d\u6570\u636e\u5e93\u5347\u7ea7\u4e86"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/16 v0, 0x9

    if-ge p2, v0, :cond_0

    .line 119
    packed-switch p2, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/SettingDBHelper;->clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    .line 225
    const/4 v8, 0x0

    .line 227
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v11, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 231
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 230
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    if-eqz v8, :cond_0

    .line 238
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 233
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v8

    .line 246
    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 234
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 235
    .local v10, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v0, "SettingDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    if-eqz v8, :cond_1

    .line 238
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 227
    monitor-exit v11

    .end local v10    # "e":Landroid/database/SQLException;
    :goto_1
    move-object v9, v8

    .line 246
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 236
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 237
    if-eqz v8, :cond_2

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 241
    throw v0

    .line 227
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 243
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v8, 0x0

    .line 264
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 268
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 267
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 269
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 264
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :goto_1
    return-object v8

    .line 270
    :catch_0
    move-exception v9

    .line 271
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v0, "SettingDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 273
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 264
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 276
    :catch_1
    move-exception v0

    goto :goto_1

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 274
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "selectStrings"    # [Ljava/lang/String;

    .prologue
    .line 285
    const/4 v8, 0x0

    .line 287
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 291
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 290
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 287
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    :goto_1
    return-object v8

    .line 293
    :catch_0
    move-exception v9

    .line 294
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v0, "SettingDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 296
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 287
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 299
    :catch_1
    move-exception v0

    goto :goto_1

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 297
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "selectStrings"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v8, 0x0

    .line 310
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 314
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    .line 313
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 315
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 310
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    :goto_1
    return-object v8

    .line 316
    :catch_0
    move-exception v9

    .line 317
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SettingDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 319
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 310
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 322
    :catch_1
    move-exception v0

    goto :goto_1

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 320
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "selectStrings"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v8, 0x0

    .line 346
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 351
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 346
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :goto_1
    return-object v8

    .line 352
    :catch_0
    move-exception v9

    .line 353
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SettingDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 346
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 358
    :catch_1
    move-exception v0

    goto :goto_1

    .line 354
    :catchall_1
    move-exception v0

    .line 355
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 356
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public queryBySql(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :try_start_2
    iget-object v2, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 402
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 406
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 398
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :goto_1
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "SettingDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 406
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 398
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 409
    :catch_1
    move-exception v2

    goto :goto_1

    .line 405
    :catchall_1
    move-exception v2

    .line 406
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 407
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/SettingDBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :try_start_2
    iget-object v2, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 377
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :goto_1
    return-object v0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "SettingDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 377
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 388
    :catch_1
    move-exception v2

    goto :goto_1

    .line 384
    :catchall_1
    move-exception v2

    .line 385
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 386
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 155
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 483
    .local v1, "numChangedRows":I
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/SettingDBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->getWritableDB()V

    .line 486
    iget-object v2, p0, Lcom/cmdm/control/database/SettingDBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 491
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 483
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :goto_1
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "SettingDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 491
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_0

    .line 483
    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 494
    :catch_1
    move-exception v2

    goto :goto_1

    .line 490
    :catchall_1
    move-exception v2

    .line 491
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 492
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dropTable"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/cmdm/control/database/SettingDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 109
    return-void
.end method
