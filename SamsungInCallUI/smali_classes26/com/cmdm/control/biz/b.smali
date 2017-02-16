.class public Lcom/cmdm/control/biz/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 3
    .param p1, "blackWhite"    # Lcom/cmdm/control/bean/BlackWhite;

    .prologue
    .line 30
    new-instance v1, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 32
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public b(Ljava/lang/String;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v1, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 90
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    const-string v2, "mobile=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/BlackWhite;

    return-object v2
.end method

.method public b(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 8
    .param p1, "blackWhite"    # Lcom/cmdm/control/bean/BlackWhite;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    new-instance v2, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 46
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    const-string v5, "mobile=?"

    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "deleteCount":I
    if-lez v1, :cond_0

    .line 49
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    .end local v1    # "deleteCount":I
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    :goto_0
    return v3

    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    .restart local v1    # "deleteCount":I
    .restart local v2    # "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    :cond_0
    move v3, v4

    .line 47
    goto :goto_0

    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    .end local v1    # "deleteCount":I
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    :cond_1
    move v3, v4

    .line 49
    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "blacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlackWhite;>;"
    new-instance v1, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 78
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method public c(Ljava/lang/String;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v1, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 96
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    const-string v2, "mobile=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/BlackWhite;

    return-object v2
.end method

.method public c(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 3
    .param p1, "blackWhite"    # Lcom/cmdm/control/bean/BlackWhite;

    .prologue
    .line 53
    new-instance v1, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 55
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public c(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "blacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlackWhite;>;"
    new-instance v1, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 84
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method public d(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 8
    .param p1, "blackWhite"    # Lcom/cmdm/control/bean/BlackWhite;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    new-instance v2, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 69
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    const-string v5, "mobile=?"

    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "deleteCount":I
    if-lez v1, :cond_0

    .line 72
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    .end local v1    # "deleteCount":I
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    :goto_0
    return v3

    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    .restart local v1    # "deleteCount":I
    .restart local v2    # "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    :cond_0
    move v3, v4

    .line 70
    goto :goto_0

    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    .end local v1    # "deleteCount":I
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    :cond_1
    move v3, v4

    .line 72
    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 100
    new-instance v3, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 102
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    invoke-virtual {p0, p1}, Lcom/cmdm/control/biz/b;->b(Ljava/lang/String;)Lcom/cmdm/control/bean/BlackWhite;

    move-result-object v1

    .line 103
    .local v1, "dbBlack":Lcom/cmdm/control/bean/BlackWhite;
    if-eqz v1, :cond_1

    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v6, "interceptcount"

    invoke-virtual {v1}, Lcom/cmdm/control/bean/BlackWhite;->getInterceptCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v6, "mobile=?"

    new-array v7, v4, [Ljava/lang/String;

    aput-object p1, v7, v5

    invoke-virtual {v2, v0, v6, v7}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 108
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    return v4

    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    move v4, v5

    .line 106
    goto :goto_0

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    move v4, v5

    .line 108
    goto :goto_0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 36
    new-instance v2, Lcom/cmdm/control/database/Impl/BlackStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/BlackStrategy;-><init>(Landroid/content/Context;)V

    .line 37
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/BlackStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 38
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    const-string v3, "addtime desc"

    invoke-virtual {v0, v4, v4, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 39
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlackWhite;>;"
    return-object v1
.end method

.method public i()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BlackWhite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v2, Lcom/cmdm/control/database/Impl/WhiteStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/WhiteStrategy;-><init>(Landroid/content/Context;)V

    .line 60
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/WhiteStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 61
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/BlackWhite;>;"
    const-string v3, "addtime desc"

    invoke-virtual {v0, v4, v4, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlackWhite;>;"
    return-object v1
.end method
