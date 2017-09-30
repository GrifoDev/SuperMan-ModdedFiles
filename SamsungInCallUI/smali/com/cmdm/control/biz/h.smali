.class public Lcom/cmdm/control/biz/h;
.super Ljava/lang/Object;


# instance fields
.field am:Lcom/cmdm/control/logic/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/e;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/h;->am:Lcom/cmdm/control/logic/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/NewContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/AddContactResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/h;->am:Lcom/cmdm/control/logic/e;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public aa()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/AuthedContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/h;->am:Lcom/cmdm/control/logic/e;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/e;->aa()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/h;->am:Lcom/cmdm/control/logic/e;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/e;->p(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/h;->am:Lcom/cmdm/control/logic/e;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/e;->q(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/h;->am:Lcom/cmdm/control/logic/e;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/e;->r(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method
