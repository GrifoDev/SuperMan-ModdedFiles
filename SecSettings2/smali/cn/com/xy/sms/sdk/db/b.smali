.class public final Lcn/com/xy/sms/sdk/db/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Unknown"


# static fields
.field private static final a:Ljava/lang/String; = "duoqu_contacts.db"

.field private static final b:I = 0x1

.field private static final c:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS contacts(_id INTEGER PRIMARY KEY AUTOINCREMENT, phone TEXT, name TEXT, update_time TEXT)"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "duoqu_contacts.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string/jumbo v0, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =?"

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/b;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/db/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/b;->d:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    return v0

    :cond_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS contacts(_id INTEGER PRIMARY KEY AUTOINCREMENT, phone TEXT, name TEXT, update_time TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
