.class public Lcom/sec/android/app/sysscope/job/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/sec/android/app/sysscope/job/a/d;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sysscope/job/a/c;->c:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sysscope/job/a/d;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/c;->c:Landroid/content/Context;

    const-string v2, "SysScope.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sysscope/job/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/a/c;->b:Lcom/sec/android/app/sysscope/job/a/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/sec/android/app/sysscope/job/a/c;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/a/c;->b:Lcom/sec/android/app/sysscope/job/a/d;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/job/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public c()Landroid/database/Cursor;
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tbl_signature"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "offset"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "size"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "base64TextSection"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "md5"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
