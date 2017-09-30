.class public Lcom/cmdm/control/biz/f;
.super Ljava/lang/Object;


# instance fields
.field ak:Lcom/cmdm/control/logic/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/c;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    return-void
.end method


# virtual methods
.method public R()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserTotalCost;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/c;->R()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public S()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GraphVerifyCode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/c;->S()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/c;->T()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/c;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/c;->k(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/c;->l(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentBuyStatusResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/f;->ak:Lcom/cmdm/control/logic/c;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/c;->m(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
