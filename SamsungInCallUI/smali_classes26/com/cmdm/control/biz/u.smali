.class public Lcom/cmdm/control/biz/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public c(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 3
    .param p1, "numList"    # Lcom/cmdm/control/bean/HarassMobile;

    .prologue
    .line 24
    new-instance v1, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;-><init>(Landroid/content/Context;)V

    .line 25
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 27
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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
            "<",
            "Lcom/cmdm/control/bean/HarassMobile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassMobile;>;"
    new-instance v2, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;-><init>(Landroid/content/Context;)V

    .line 34
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 37
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v3

    goto :goto_0
.end method
