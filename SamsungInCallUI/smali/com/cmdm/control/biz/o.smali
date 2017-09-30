.class public Lcom/cmdm/control/biz/o;
.super Ljava/lang/Object;


# instance fields
.field au:Lcom/cmdm/control/logic/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/m;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/m;->C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/m;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/m;->L(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/m;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    const-string v8, "0"

    const-string v9, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/logic/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/logic/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/m;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public aA()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SwitchResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/m;->aA()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public aB()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/WorkTimeResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/m;->aB()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/m;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingCommentResult;",
            ">;"
        }
    .end annotation

    mul-int v0, p2, p3

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v2, p1, v0, v1}, Lcom/cmdm/control/logic/m;->c(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingPraiseResult;",
            ">;"
        }
    .end annotation

    mul-int v0, p2, p3

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v2, p1, v0, v1}, Lcom/cmdm/control/logic/m;->d(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
