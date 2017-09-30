.class public Lcom/cmdm/control/biz/b;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 4

    new-instance v0, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, "mobile=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlackWhite;

    return-object v0
.end method

.method public b(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v2, "mobile=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 4

    new-instance v0, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, "mobile=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlackWhite;

    return-object v0
.end method

.method public c(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v2, "mobile=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {p0, p1}, Lcom/cmdm/control/biz/b;->b(Ljava/lang/String;)Lcom/cmdm/control/bean/BlackWhite;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "interceptcount"

    invoke-virtual {v2}, Lcom/cmdm/control/bean/BlackWhite;->getInterceptCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "mobile=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v2, v5}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, "addtime desc"

    invoke-virtual {v1, v2, v2, v0}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, "addtime desc"

    invoke-virtual {v1, v2, v2, v0}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
