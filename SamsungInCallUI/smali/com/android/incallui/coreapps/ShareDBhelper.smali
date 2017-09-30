.class public Lcom/android/incallui/coreapps/ShareDBhelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final AUTH_CODE:Ljava/lang/String; = "authCode"

.field public static final CONTENT_STATUS:Ljava/lang/String; = "content_status"

.field public static final CONTENT_TOKEN:Ljava/lang/String; = "content_token"

.field private static final DB_FILE:Ljava/lang/String; = "sampleApp2.db"

.field private static final DB_VER:I = 0x3

.field public static final DIR_NAME:Ljava/lang/String; = "directory_name"

.field public static final EXPIRY:Ljava/lang/String; = "expiry"

.field public static final LOCAL_FILE:Ljava/lang/String; = "local_file"

.field public static final MEDIA_BOX:Ljava/lang/String; = "media_box"

.field public static final MEDIA_BOX_INBOX:I = 0x1

.field public static final MEDIA_BOX_OUTBOX:I = 0x2

.field public static final MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final MEDIA_STATUS:Ljava/lang/String; = "media_status"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PUBLIC_TOKEN:Ljava/lang/String; = "publicToken"

.field public static final RECIPIENT_PHONE:Ljava/lang/String; = "recipient_phone"

.field public static final REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TABLE_CONTENT:Ljava/lang/String; = "content"

.field public static final TABLE_MEDIA:Ljava/lang/String; = "media"

.field public static final TIMESTAMP:Ljava/lang/String; = "time_Stamp"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/coreapps/ShareDBhelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sampleApp2.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createContentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE content (_id INTEGER PRIMARY KEY AUTOINCREMENT,media_id INTEGER,remote_uri TEXT,name TEXT,content_status INTEGER,local_file TEXT,publicToken TEXT,authCode INTEGER,size INTEGER, UNIQUE (media_id, remote_uri));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createMediaTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE media (_id INTEGER PRIMARY KEY AUTOINCREMENT,recipient_phone TEXT,media_box INTEGER NOT NULL DEFAULT 2,content_token TEXT,directory_name TEXT,media_status INTEGER,time_Stamp INTEGER, UNIQUE (media_box, content_token));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getDatabaseInstance()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/android/incallui/coreapps/ShareDBhelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/coreapps/ShareDBhelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/incallui/coreapps/ShareDBhelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/coreapps/ShareDBhelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/coreapps/ShareDBhelper;

    invoke-direct {v0, p0}, Lcom/android/incallui/coreapps/ShareDBhelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/ShareDBhelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/coreapps/ShareDBhelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const-string v0, "ALTER TABLE media ADD COLUMN expiry INTEGER"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    const-string v0, "ALTER TABLE media ADD COLUMN size LONG"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/coreapps/ShareDBhelper;->createMediaTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/coreapps/ShareDBhelper;->createContentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/coreapps/ShareDBhelper;->upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/android/incallui/coreapps/ShareDBhelper;->upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
