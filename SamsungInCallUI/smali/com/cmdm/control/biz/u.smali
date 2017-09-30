.class public Lcom/cmdm/control/biz/u;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
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

    const/4 v0, 0x0

    new-instance v1, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/u;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
