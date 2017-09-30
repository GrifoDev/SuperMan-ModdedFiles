.class Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final DB_USER:Ljava/lang/String; = "sdkenhancedchat.db"

.field private static final DB_VERSION:I = 0x5

.field public static final PROFILE_TABLE:Ljava/lang/String; = "chat_sdk_message_profile"

.field private static final TAG:Ljava/lang/String;

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstanceFile:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static deleteProfileTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS chat_sdk_message_profile;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->mInstanceFile:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->mInstanceFile:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    const-string v2, "sdkenhancedchat.db"

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->mInstanceFile:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->mInstanceFile:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->mInstanceFile:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeDatabase. oldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ge p1, v0, :cond_0

    :try_start_0
    const-string v1, "upgradeDatabase. Create new Chat id table."

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    move p1, v0

    :cond_0
    if-ge p1, v3, :cond_1

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->deleteProfileTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "upgradeDatabase. upgraded to newVersion: 5"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "Create message_profile table."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/MessageChatIdTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade. oldVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/db/DBHelper;->upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
