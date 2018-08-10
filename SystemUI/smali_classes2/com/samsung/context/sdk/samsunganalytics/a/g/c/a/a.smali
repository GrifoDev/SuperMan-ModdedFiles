.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private b(Ljava/lang/String;)Ljava/util/Queue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->c:Ljava/util/Queue;

    return-object v2

    :cond_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;-><init>()V

    const-string/jumbo v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "timestamp"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->a(J)V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->c:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "select * from logs"

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->b(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select * from logs LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->b(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/a/g/d;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
