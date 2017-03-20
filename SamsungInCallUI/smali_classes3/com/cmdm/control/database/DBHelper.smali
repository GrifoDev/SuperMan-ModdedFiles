.class public Lcom/cmdm/control/database/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "caixiang.db"

.field static final TAG:Ljava/lang/String; = "DBHelper"

.field private static final aQ:Ljava/lang/String; = "databaselog"

.field private static final aR:I = 0x10

.field private static aT:Lcom/cmdm/control/database/DBHelper;

.field public static final btLock:[B

.field private static mContext:Landroid/content/Context;


# instance fields
.field private aS:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "caixiang.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    sput-object p1, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private aW()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 205
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/DBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-class v1, Lcom/cmdm/control/database/DBHelper;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->aT:Lcom/cmdm/control/database/DBHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cmdm/control/database/DBHelper;

    invoke-direct {v0, p0}, Lcom/cmdm/control/database/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmdm/control/database/DBHelper;->aT:Lcom/cmdm/control/database/DBHelper;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sput-object p0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->aT:Lcom/cmdm/control/database/DBHelper;

    return-object v0

    .line 37
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
    .line 208
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 209
    return-void
.end method

.method public clearDBHelper()Z
    .locals 3

    .prologue
    .line 124
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 125
    .local v0, "isClear":Ljava/lang/Boolean;
    sget-object v2, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    .line 127
    iget-object v1, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/DBHelper;->clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 125
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 103
    const-string v0, "contact_info"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 104
    const-string v0, "caixiang_showing"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 105
    const-string v0, "caixiang_sinceshow"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 106
    const-string v0, "caixiang_groupshow"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 107
    const-string v0, "filedownlog"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 108
    const-string v0, "videotable"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 109
    const-string v0, "apk_upgrade_data"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 110
    const-string v0, "caiyin_showing"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 111
    const-string v0, "activation_list"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 112
    const-string v0, "sina_weibo_data"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 113
    const-string v0, "tecent_weibo_data"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 114
    const-string v0, "black_list"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 115
    const-string v0, "fraud_mobile"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 116
    const-string v0, "harass"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 117
    const-string v0, "markharass"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 118
    const-string v0, "intercept"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, "lastChangeCount":I
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    .line 558
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    .line 559
    iget-object v2, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 560
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 566
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 561
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v1

    .line 572
    :goto_0
    return v2

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "DBHelper"

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

    .line 565
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 566
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 555
    monitor-exit v3

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v2

    .line 565
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 566
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 567
    throw v2

    .line 555
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 569
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 217
    return-void
.end method

.method public excute(Ljava/lang/String;)V
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 527
    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 529
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    .line 530
    iget-object v1, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 534
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 527
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    :goto_1
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "DBHelper"

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

    .line 534
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 527
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

    .line 537
    :catch_1
    move-exception v1

    goto :goto_1

    .line 533
    :catchall_1
    move-exception v1

    .line 534
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 535
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getWritableDB()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    :cond_1
    return-void
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 237
    const-wide/16 v2, -0x1

    .line 239
    .local v2, "l":J
    :try_start_0
    sget-object v4, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    .line 242
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    .line 243
    iget-object v1, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 244
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 249
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 239
    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    :goto_1
    return-wide v2

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "DBHelper"

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

    .line 248
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 249
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 239
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

    .line 252
    :catch_1
    move-exception v1

    goto :goto_1

    .line 247
    :catchall_1
    move-exception v1

    .line 248
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 249
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 250
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public insert(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "insertSql"    # Ljava/lang/String;

    .prologue
    .line 266
    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    .line 269
    iget-object v1, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 266
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "DBHelper"

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

    .line 273
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 266
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

    .line 276
    :catch_1
    move-exception v1

    goto :goto_1

    .line 272
    :catchall_1
    move-exception v1

    .line 273
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 274
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_info (autoid text primary key,  contactnum text default null,  contactname text default null,  defaultcontactnum text default null,  contactid text default null,  statu text default null,  photoType text default 0,  type text default null,  namepinyin text default null,  photouri text default null, shortnum text default null, set_time datetime default(datetime(\'now\', \'localtime\')));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_showing (autoid integer primary key autoincrement ,missdn text not null ,cid text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,url text not null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,thum_url text not null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_sinceshow (autoid integer primary key autoincrement ,missdn text default null ,cid text not null ,url text not null ,thum_url text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,description text not null ,iscurrent text default null ,isgif text default null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_groupshow (autoid integer primary key autoincrement ,missdn text default null ,gid text not null ,cid text not null ,url text not null ,thum_url text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,description text not null ,iscurrent text default null ,isgif text default null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "CREATE TABLE IF NOT EXISTS filedownlog (id integer primary key autoincrement,videoid INTEGER, downpath varchar(100), threadid INTEGER, downlength INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS videotable (id integer primary key autoincrement,videoid varchar(100),filepath varchar(100),posterurl varchar(100),crstype varchar(100),crsname varchar(100),downloadtime varchar(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "CREATE TABLE IF NOT EXISTS apk_upgrade_data (id integer primary key autoincrement,threadid INTEGER,downlength INTEGER,downloadurl varchar,version varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS sina_weibo_data (sina_token varchar,sina_expiretime varchar,sina_uid varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE IF NOT EXISTS tecent_weibo_data (tecent_token varchar,tecent_expiretime varchar,tecent_openid varchar,tecent_openkey varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS black_list (autoid text primary key,  type text default null,  blacklistname text default null,  blacklistnum text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS caiyin_showing (autoid integer primary key autoincrement ,uid text not null ,missdn text not null ,cid text not null ,priority text default 1 ,settingId text default null ,dateType text default 1 ,settingWeek text default null ,settingStartDate text default 19700101 ,settingEndDate text default 29700101 ,settingStartTime text default 000000 ,settingEndTime text default 240000 ,timing text default 0 ,greeting text default null ,url text not null ,posterUrl text not null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE TABLE IF NOT EXISTS activation_list (softname text not null,  softpackage text not null primary key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS search_history (keyword text not null, searchtime BIGINT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "CREATE TABLE IF NOT EXISTS black (mobile text not null primary key, name text, interceptcount INTEGER,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "CREATE TABLE IF NOT EXISTS white (mobile text not null primary key,name text,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "CREATE TABLE IF NOT EXISTS harass (harassid text not null unique,  harassname text not null unique, smallimg text default null , bgimg text default null , marknum text default null, custom text default null, sort integer default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "CREATE TABLE IF NOT EXISTS markharass (harassid text not null,  harassname text not null, smallimg text default null , bgimg text default null , mobile text not null unique, guishudi text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "CREATE TABLE IF NOT EXISTS intercept (mobile text not null,  mobiledes text not null, harassname text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v3, 0x0

    .line 153
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5347\u7ea7\u6570\u636e\u5e93\u4e86newVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    .line 156
    packed-switch p2, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/DBHelper;->clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    .line 174
    :pswitch_1
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setFraudNum(Landroid/content/Context;Z)V

    .line 175
    const-string v0, "CREATE TABLE IF NOT EXISTS search_history (keyword text not null, searchtime BIGINT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_2
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setFraudNum(Landroid/content/Context;Z)V

    .line 180
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setHarassCate(Landroid/content/Context;Z)V

    .line 181
    const-string v0, "DROP TABLE IF EXISTS fraud_mobile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "CREATE TABLE IF NOT EXISTS black (mobile text not null primary key, name text, interceptcount INTEGER,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v0, "CREATE TABLE IF NOT EXISTS white (mobile text not null primary key,name text,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v0, "CREATE TABLE IF NOT EXISTS harass (harassid text not null unique,  harassname text not null unique, smallimg text default null , bgimg text default null , marknum text default null, custom text default null, sort integer default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v0, "CREATE TABLE IF NOT EXISTS markharass (harassid text not null,  harassname text not null, smallimg text default null , bgimg text default null , mobile text not null unique, guishudi text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v0, "CREATE TABLE IF NOT EXISTS intercept (mobile text not null,  mobiledes text not null, harassname text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v0, "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 156
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    .line 293
    const/4 v8, 0x0

    .line 295
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v11, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 299
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 298
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    if-eqz v8, :cond_0

    .line 306
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 301
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v8

    .line 314
    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 302
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 303
    .local v10, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v0, "DBHelper"

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

    .line 305
    if-eqz v8, :cond_1

    .line 306
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 295
    monitor-exit v11

    .end local v10    # "e":Landroid/database/SQLException;
    :goto_1
    move-object v9, v8

    .line 314
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 304
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 305
    if-eqz v8, :cond_2

    .line 306
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 309
    throw v0

    .line 295
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 311
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
    .line 330
    const/4 v8, 0x0

    .line 332
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 336
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 335
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 332
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    :goto_1
    return-object v8

    .line 338
    :catch_0
    move-exception v9

    .line 339
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v0, "DBHelper"

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

    .line 341
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 332
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

    .line 344
    :catch_1
    move-exception v0

    goto :goto_1

    .line 340
    :catchall_1
    move-exception v0

    .line 341
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 342
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
    .line 353
    const/4 v8, 0x0

    .line 355
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 359
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 358
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 364
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 355
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    :goto_1
    return-object v8

    .line 361
    :catch_0
    move-exception v9

    .line 362
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v0, "DBHelper"

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

    .line 364
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 355
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

    .line 367
    :catch_1
    move-exception v0

    goto :goto_1

    .line 363
    :catchall_1
    move-exception v0

    .line 364
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 365
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
    .line 376
    const/4 v8, 0x0

    .line 378
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    .line 382
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    .line 381
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 383
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 378
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    :goto_1
    return-object v8

    .line 384
    :catch_0
    move-exception v9

    .line 385
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "DBHelper"

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

    .line 387
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 378
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

    .line 390
    :catch_1
    move-exception v0

    goto :goto_1

    .line 386
    :catchall_1
    move-exception v0

    .line 387
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 388
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
    .line 412
    const/4 v8, 0x0

    .line 414
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 419
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 423
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 414
    :goto_0
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    :goto_1
    return-object v8

    .line 420
    :catch_0
    move-exception v9

    .line 421
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "DBHelper"

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

    .line 423
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 414
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

    .line 426
    :catch_1
    move-exception v0

    goto :goto_1

    .line 422
    :catchall_1
    move-exception v0

    .line 423
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 424
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "selectStrings"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v9, 0x0

    .line 451
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v11, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 456
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 451
    :goto_0
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    :goto_1
    return-object v9

    .line 457
    :catch_0
    move-exception v10

    .line 458
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 460
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 451
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 463
    :catch_1
    move-exception v0

    goto :goto_1

    .line 459
    :catchall_1
    move-exception v0

    .line 460
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 461
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public queryBySql(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :try_start_2
    iget-object v2, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 503
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 517
    :goto_1
    return-object v0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "DBHelper"

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

    .line 511
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 503
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

    .line 514
    :catch_1
    move-exception v2

    goto :goto_1

    .line 510
    :catchall_1
    move-exception v2

    .line 511
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 512
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :try_start_2
    iget-object v2, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 490
    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 482
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    :goto_1
    return-object v0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "DBHelper"

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

    .line 490
    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 482
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

    .line 493
    :catch_1
    move-exception v2

    goto :goto_1

    .line 489
    :catchall_1
    move-exception v2

    .line 490
    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 491
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 213
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 586
    const/4 v1, 0x0

    .line 588
    .local v1, "numChangedRows":I
    :try_start_0
    sget-object v3, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 590
    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    .line 591
    iget-object v2, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 596
    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 588
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :goto_1
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "DBHelper"

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

    .line 596
    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    .line 588
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

    .line 599
    :catch_1
    move-exception v2

    goto :goto_1

    .line 595
    :catchall_1
    move-exception v2

    .line 596
    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 597
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dropTable"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/cmdm/control/database/DBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 145
    return-void
.end method
