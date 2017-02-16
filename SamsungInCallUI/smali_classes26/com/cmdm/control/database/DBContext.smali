.class public Lcom/cmdm/control/database/DBContext;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field public mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;


# direct methods
.method public constructor <init>(Lcom/cmdm/control/database/IDBStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/database/IDBStrategy",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    .local p1, "cacheStrategy":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    .line 13
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 46
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/IDBStrategy;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/IDBStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSafeListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->getSafeListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/IDBStrategy;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public insert(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    .local p1, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/IDBStrategy;->insert(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 60
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 65
    .local p0, "this":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
