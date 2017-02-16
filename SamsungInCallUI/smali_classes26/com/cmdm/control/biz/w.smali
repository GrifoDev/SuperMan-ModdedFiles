.class public Lcom/cmdm/control/biz/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/w;->mContext:Landroid/content/Context;

    .line 15
    iput-object p1, p0, Lcom/cmdm/control/biz/w;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public aI()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    new-instance v2, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/w;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;-><init>(Landroid/content/Context;)V

    .line 26
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 27
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Ljava/lang/String;>;"
    const-string v3, "searchtime desc limit 0,6"

    invoke-virtual {v0, v4, v4, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 28
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method public aJ()Z
    .locals 4

    .prologue
    .line 32
    new-instance v1, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/w;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 34
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Ljava/lang/String;>;"
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ao(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v1, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/w;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 21
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
