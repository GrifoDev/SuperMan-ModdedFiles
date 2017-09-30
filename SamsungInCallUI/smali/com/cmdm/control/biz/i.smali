.class public Lcom/cmdm/control/biz/i;
.super Ljava/lang/Object;


# instance fields
.field an:Lcom/cmdm/control/logic/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/f;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->A(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/f;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/f;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->s(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/f;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->t(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->u(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->v(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->w(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->x(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CavassResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->z(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
