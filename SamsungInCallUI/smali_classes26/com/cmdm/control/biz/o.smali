.class public Lcom/cmdm/control/biz/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field au:Lcom/cmdm/control/logic/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/cmdm/control/logic/m;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    .line 26
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "contentSwitch"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/m;->C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 136
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "workDay"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/m;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "settingId"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/m;->L(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "starId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/m;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "showType"    # Ljava/lang/String;
    .param p3, "txtId"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "greeting"    # Ljava/lang/String;
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

    .prologue
    .line 82
    .local p7, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    .line 83
    const-string v8, "0"

    const-string v9, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 82
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/logic/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 84
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v10
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "showType"    # Ljava/lang/String;
    .param p3, "txtId"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "greeting"    # Ljava/lang/String;
    .param p8, "workTimeSet"    # Ljava/lang/String;
    .param p9, "channelCode"    # Ljava/lang/String;
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

    .prologue
    .line 53
    .local p7, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/logic/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 56
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v10
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 7
    .param p1, "contentId"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "desString"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
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

    .prologue
    .line 105
    .local p2, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/m;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v6

    .line 108
    .local v6, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v6
.end method

.method public aA()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SwitchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/m;->aA()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 147
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
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

    .prologue
    .line 223
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/m;->aB()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 7
    .param p1, "boxId"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "desString"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
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

    .prologue
    .line 123
    .local p2, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/m;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v6

    .line 125
    .local v6, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v6
.end method

.method public c(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "settingId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageAccount"    # I
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

    .prologue
    .line 176
    mul-int v0, p2, p3

    .line 177
    .local v0, "offset":I
    add-int/lit8 v2, p2, 0x1

    mul-int v1, v2, p3

    .line 178
    .local v1, "range":I
    iget-object v2, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v2, p1, v0, v1}, Lcom/cmdm/control/logic/m;->c(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v2

    return-object v2
.end method

.method public d(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "settingId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageAccount"    # I
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

    .prologue
    .line 194
    mul-int v0, p2, p3

    .line 195
    .local v0, "offset":I
    add-int/lit8 v2, p2, 0x1

    mul-int v1, v2, p3

    .line 196
    .local v1, "range":I
    iget-object v2, p0, Lcom/cmdm/control/biz/o;->au:Lcom/cmdm/control/logic/m;

    invoke-virtual {v2, p1, v0, v1}, Lcom/cmdm/control/logic/m;->d(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v2

    return-object v2
.end method
