.class public abstract Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;
.super Ljava/lang/Object;
.source "SQLiteOpenHelperBaseDAO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "mSQLiteOpenHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 20
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public batch(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 44
    :cond_1
    return v2

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    .local v2, "result":I
    const-wide/16 v0, 0x0

    .line 37
    .local v0, "id":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 39
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected abstract beanToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public count([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 78
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    const/4 v8, 0x0

    .line 80
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    if-eqz v8, :cond_1

    .line 82
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 85
    if-eqz v8, :cond_0

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-eqz v8, :cond_2

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    iget-object v0, p0, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 74
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->count([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->beanToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/yulore/android/common/db/handler/CursorHandler;)Ljava/lang/Object;
    .locals 10
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/yulore/android/common/db/handler/CursorHandler",
            "<TD;>;)TD;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    .local p4, "handler":Lcom/yulore/android/common/db/handler/CursorHandler;, "Lcom/yulore/android/common/db/handler/CursorHandler<TD;>;"
    const/4 v9, 0x0

    .line 60
    const/4 v8, 0x0

    .line 63
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 64
    if-eqz p4, :cond_1

    invoke-interface {p4, v8}, Lcom/yulore/android/common/db/handler/CursorHandler;->handle(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 66
    :goto_0
    if-eqz v8, :cond_0

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v9

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;, "Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yulore/android/common/db/SQLiteOpenHelperBaseDAO;->beanToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
