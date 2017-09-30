.class public Lcom/cmdm/control/database/DBContext;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/IDBStrategy;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/IDBStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
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

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/IDBStrategy;->insert(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/DBContext;->mCacheStrategy:Lcom/cmdm/control/database/IDBStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/IDBStrategy;->updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
