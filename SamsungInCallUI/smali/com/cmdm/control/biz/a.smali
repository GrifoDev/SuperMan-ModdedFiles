.class public Lcom/cmdm/control/biz/a;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/a;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/cmdm/control/biz/a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Software;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/ActivationListStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ActivationListStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, v2, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/Software;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/cmdm/control/database/Impl/ActivationListStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ActivationListStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, v2, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/Software;

    invoke-virtual {v1, v0}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public g()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/ActivationListStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/ActivationListStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, v2, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
