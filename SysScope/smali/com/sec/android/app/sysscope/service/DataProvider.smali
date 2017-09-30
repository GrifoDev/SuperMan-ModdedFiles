.class public Lcom/sec/android/app/sysscope/service/DataProvider;
.super Landroid/content/ContentProvider;


# static fields
.field static final a:Landroid/net/Uri;


# instance fields
.field b:Lcom/sec/android/app/sysscope/service/a;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.verizon.security/ROOT_STATUS"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sysscope/service/DataProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "DataProvider"

    const-string v1, "START of DataProvider"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sysscope/service/a;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sysscope/service/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->b:Lcom/sec/android/app/sysscope/service/a;

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->b:Lcom/sec/android/app/sysscope/service/a;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    const-string v0, "DataProvider"

    const-string v1, "START of query"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "statusTable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "statusTable"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-string v2, "DataProvider"

    const-string v3, "check"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const-string v0, "DataProvider"

    const-string v1, "check"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "DataProvider"

    const-string v1, "uncheck"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/DataProvider;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "statusTable"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-string v0, "DataProvider"

    const-string v1, "uncheck"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
