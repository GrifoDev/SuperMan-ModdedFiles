.class public abstract Lcom/yulore/android/common/db/ContentResolverBaseDAO;
.super Ljava/lang/Object;
.source "ContentResolverBaseDAO.java"


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
.field protected contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 20
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->contentResolver:Landroid/content/ContentResolver;

    .line 22
    return-void
.end method


# virtual methods
.method public batch(Landroid/net/Uri;Ljava/util/List;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 40
    :cond_1
    return v0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    .local v0, "result":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, v1}, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->insert(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;

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

.method public count(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 73
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    const/4 v6, 0x0

    .line 75
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->contentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    if-eqz v6, :cond_1

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 80
    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-eqz v6, :cond_2

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    iget-object v0, p0, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public find(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 69
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->count(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "TT;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p2}, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->beanToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/yulore/android/common/db/handler/CursorHandler;)Ljava/lang/Object;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/yulore/android/common/db/handler/CursorHandler",
            "<TD;>;)TD;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    .local p5, "handler":Lcom/yulore/android/common/db/handler/CursorHandler;, "Lcom/yulore/android/common/db/handler/CursorHandler<TD;>;"
    const/4 v7, 0x0

    .line 56
    const/4 v6, 0x0

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->contentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    if-eqz p5, :cond_1

    invoke-interface {p5, v6}, Lcom/yulore/android/common/db/handler/CursorHandler;->handle(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 61
    :goto_0
    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v7

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public update(Landroid/net/Uri;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/yulore/android/common/db/ContentResolverBaseDAO;, "Lcom/yulore/android/common/db/ContentResolverBaseDAO<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p2}, Lcom/yulore/android/common/db/ContentResolverBaseDAO;->beanToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
