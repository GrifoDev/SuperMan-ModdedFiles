.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a(J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Queue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/d;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v4, "select * from logs"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;-><init>()V

    const-string/jumbo v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->a(Ljava/lang/String;)V

    const-string/jumbo v4, "data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b(Ljava/lang/String;)V

    const-string/jumbo v4, "timestamp"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->a(J)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(J)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
