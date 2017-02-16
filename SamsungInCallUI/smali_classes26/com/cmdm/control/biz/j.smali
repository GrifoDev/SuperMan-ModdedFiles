.class public Lcom/cmdm/control/biz/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ao:Lcom/cmdm/control/logic/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/cmdm/control/logic/g;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    .line 36
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/g;->B(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 95
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "switchFlag"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/g;->C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 146
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public D(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/g;->D(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 159
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public E(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "activityCode"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/g;->E(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "prizeId"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/g;->F(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "extensionKey"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/g;->G(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public ab()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/FzTopicResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/g;->ab()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 46
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicResult;>;"
    return-object v0
.end method

.method public ac()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RebateAmountResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/g;->ac()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 83
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    return-object v0
.end method

.method public ad()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ExchangeListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/g;->ad()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 170
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    return-object v0
.end method

.method public ae()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->ae()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public af()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetPrizeListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->af()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public ag()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->ag()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public ah()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetUserCoupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->ah()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public ai()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetUserSignInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->ai()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public aj()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserSignRsp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->aj()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public ak()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsNewUserSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/g;->ak()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "queryType"    # Ljava/lang/String;
    .param p4, "sequenceType"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/FzTopicTxtResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    .local v1, "page":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, "num":I
    iget-object v3, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3, p4}, Lcom/cmdm/control/logic/g;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v2

    .line 72
    .local v2, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicTxtResult;>;"
    return-object v2
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "queryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserTaskResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    .local v1, "page":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, "num":I
    iget-object v3, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    mul-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v3, v4, v5, p3}, Lcom/cmdm/control/logic/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v2

    .line 132
    .local v2, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    return-object v2
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/g;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/g;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 110
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetHistoryAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/g;->u(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetSignList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cmdm/control/biz/j;->ao:Lcom/cmdm/control/logic/g;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/g;->x(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
