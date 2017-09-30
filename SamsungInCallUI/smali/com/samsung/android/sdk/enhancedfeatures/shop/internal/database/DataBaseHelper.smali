.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper$Tables;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "shopagent.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;


# instance fields
.field private testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "shopagent.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->testMode:Z

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/DataBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE contents_list (_id INTEGER PRIMARY KEY AUTOINCREMENT, content_type INTEGER NOT NULL DEFAULT(1), item_id INTEGER NOT NULL, title TEXT, panel_url TEXT, file_path TEXT, install INTEGER NOT NULL DEFAULT(0), expirytime INTEGER NOT NULL DEFAULT(0), display_startdate INTEGER NOT NULL DEFAULT(0), local_version INTEGER NOT NULL DEFAULT(1), latest_version INTEGER NOT NULL DEFAULT(1), extras TEXT,  UNIQUE (content_type, item_id))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE sticker_item (_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id INTEGER NOT NULL, sticker_id INTEGER NOT NULL, file_path TEXT, sent_time INTEGER NOT NULL DEFAULT(0),  UNIQUE (item_id, sticker_id))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "SQLiteOpenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade - old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
