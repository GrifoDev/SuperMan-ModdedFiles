.class public Lcom/cmdm/control/database/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


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

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "caixiang.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object p1, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private aW()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/DBHelper;
    .locals 2

    const-class v1, Lcom/cmdm/control/database/DBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->aT:Lcom/cmdm/control/database/DBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/database/DBHelper;

    invoke-direct {v0, p0}, Lcom/cmdm/control/database/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmdm/control/database/DBHelper;->aT:Lcom/cmdm/control/database/DBHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object p0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/cmdm/control/database/DBHelper;->aT:Lcom/cmdm/control/database/DBHelper;

    return-object v0

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

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public clearDBHelper()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    sget-object v1, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/database/DBHelper;->clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const-string v0, "contact_info"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "caixiang_showing"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "caixiang_sinceshow"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "caixiang_groupshow"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "filedownlog"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "videotable"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "apk_upgrade_data"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "caiyin_showing"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "activation_list"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "sina_weibo_data"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "tecent_weibo_data"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "black_list"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "fraud_mobile"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "harass"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "markharass"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "intercept"

    invoke-virtual {p0, p1, v0}, Lcom/cmdm/control/database/DBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    :try_start_0
    sget-object v1, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    monitor-exit v1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public endTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public excute(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getWritableDB()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    return-void
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v2, -0x1

    :try_start_0
    sget-object v4, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v0, v2

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    return-wide v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "DBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v7, v2

    move-wide v2, v0

    move-object v0, v7

    goto :goto_2
.end method

.method public insert(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    sget-object v1, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS contact_info (autoid text primary key,  contactnum text default null,  contactname text default null,  defaultcontactnum text default null,  contactid text default null,  statu text default null,  photoType text default 0,  type text default null,  namepinyin text default null,  photouri text default null, shortnum text default null, set_time datetime default(datetime(\'now\', \'localtime\')));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_showing (autoid integer primary key autoincrement ,missdn text not null ,cid text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,url text not null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,thum_url text not null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_sinceshow (autoid integer primary key autoincrement ,missdn text default null ,cid text not null ,url text not null ,thum_url text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,description text not null ,iscurrent text default null ,isgif text default null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS caixiang_groupshow (autoid integer primary key autoincrement ,missdn text default null ,gid text not null ,cid text not null ,url text not null ,thum_url text not null ,set_date text default null ,guo_qi_date text default null ,greeting text default null ,start_time text default null ,end_time text default null ,show_method text not null ,uid text not null ,description text not null ,iscurrent text default null ,isgif text default null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS filedownlog (id integer primary key autoincrement,videoid INTEGER, downpath varchar(100), threadid INTEGER, downlength INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS videotable (id integer primary key autoincrement,videoid varchar(100),filepath varchar(100),posterurl varchar(100),crstype varchar(100),crsname varchar(100),downloadtime varchar(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS apk_upgrade_data (id integer primary key autoincrement,threadid INTEGER,downlength INTEGER,downloadurl varchar,version varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sina_weibo_data (sina_token varchar,sina_expiretime varchar,sina_uid varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tecent_weibo_data (tecent_token varchar,tecent_expiretime varchar,tecent_openid varchar,tecent_openkey varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS black_list (autoid text primary key,  type text default null,  blacklistname text default null,  blacklistnum text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS caiyin_showing (autoid integer primary key autoincrement ,uid text not null ,missdn text not null ,cid text not null ,priority text default 1 ,settingId text default null ,dateType text default 1 ,settingWeek text default null ,settingStartDate text default 19700101 ,settingEndDate text default 29700101 ,settingStartTime text default 000000 ,settingEndTime text default 240000 ,timing text default 0 ,greeting text default null ,url text not null ,posterUrl text not null ,last_time datetime default (datetime(\'now\', \'localtime\')) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS activation_list (softname text not null,  softpackage text not null primary key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS search_history (keyword text not null, searchtime BIGINT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS black (mobile text not null primary key, name text, interceptcount INTEGER,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS white (mobile text not null primary key,name text,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS harass (harassid text not null unique,  harassname text not null unique, smallimg text default null , bgimg text default null , marknum text default null, custom text default null, sort integer default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS markharass (harassid text not null,  harassname text not null, smallimg text default null , bgimg text default null , mobile text not null unique, guishudi text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS intercept (mobile text not null,  mobiledes text not null, harassname text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5347\u7ea7\u6570\u636e\u5e93\u4e86newVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/DBHelper;->clearDataBase(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setFraudNum(Landroid/content/Context;Z)V

    const-string v0, "CREATE TABLE IF NOT EXISTS search_history (keyword text not null, searchtime BIGINT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setFraudNum(Landroid/content/Context;Z)V

    sget-object v0, Lcom/cmdm/control/database/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setHarassCate(Landroid/content/Context;Z)V

    const-string v0, "DROP TABLE IF EXISTS fraud_mobile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS black (mobile text not null primary key, name text, interceptcount INTEGER,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS white (mobile text not null primary key,name text,addtime BIGINT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS harass (harassid text not null unique,  harassname text not null unique, smallimg text default null , bgimg text default null , marknum text default null, custom text default null, sort integer default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS markharass (harassid text not null,  harassname text not null, smallimg text default null , bgimg text default null , mobile text not null unique, guishudi text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS intercept (mobile text not null,  mobiledes text not null, harassname text default null, date text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS fraud_mobile (mobile text not null primary key,  type text default null , typename text default null , smallimg text default null , bgimg text default null , mobiledes text default null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

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
    .locals 10

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_0

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_1
    :try_start_5
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_1

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_2
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v8, :cond_2

    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :catchall_3
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_6
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_6
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_6
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_6
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v9, 0x0

    :try_start_0
    sget-object v10, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_2
    :try_start_6
    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v9

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public queryBySql(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "DBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0}, Lcom/cmdm/control/database/DBHelper;->aW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "DBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cmdm/control/database/DBHelper;->btLock:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->getWritableDB()V

    iget-object v0, p0, Lcom/cmdm/control/database/DBHelper;->aS:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "DBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u5f02\u5e38\u88ab\u9501\u4e86"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cmdm/control/database/DBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method
