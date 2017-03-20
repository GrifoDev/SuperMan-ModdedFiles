.class public Lcom/cmdm/control/biz/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ap:Lcom/cmdm/control/logic/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/cmdm/control/logic/h;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    .line 28
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/h;->H(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 116
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "pageNum"    # Ljava/lang/String;
    .param p2, "pageSize"    # Ljava/lang/String;
    .param p3, "beginDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ConsumeHistoryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v6

    .line 80
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ConsumeHistoryResult;>;"
    return-object v6
.end method

.method public a(Z)V
    .locals 1
    .param p1, "islocal"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/h;->a(Z)V

    .line 24
    return-void
.end method

.method public al()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/PointsBalance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    .line 103
    invoke-virtual {v1}, Lcom/cmdm/control/logic/h;->al()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 104
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PointsBalance;>;"
    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "pageNum"    # Ljava/lang/String;
    .param p2, "pageSize"    # Ljava/lang/String;
    .param p3, "beginDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ChargeHistoryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    .line 59
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/h;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 61
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ChargeHistoryResult;>;"
    return-object v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/h;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 42
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GainIntegralLogResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/cmdm/control/biz/k;->ap:Lcom/cmdm/control/logic/h;

    .line 92
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/h;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 93
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GainIntegralLogResult;>;"
    return-object v0
.end method
