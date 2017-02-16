.class public Lcom/cmdm/control/logic/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cg:Lcom/cmdm/control/dao/g;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field isLocal:Z

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    .line 30
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cmdm/control/logic/h;->isLocal:Z

    .line 34
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/h;->bY:I

    .line 35
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/cmdm/control/dao/g;->aQ()Lcom/cmdm/control/dao/g;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    .line 45
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 47
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/h;->bY:I

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v9, 0x0

    .line 94
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    iget-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    .line 97
    iget v5, p0, Lcom/cmdm/control/logic/h;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 96
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 105
    :goto_0
    return-object v9

    .line 99
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 100
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 99
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 103
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
    .line 184
    const/4 v13, 0x0

    .line 186
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ConsumeHistoryResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    iget-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    .line 191
    iget v9, p0, Lcom/cmdm/control/logic/h;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 189
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 201
    :goto_0
    return-object v13

    .line 193
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 194
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ConsumeHistoryResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 195
    const/4 v2, 0x0

    .line 193
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ConsumeHistoryResult;>;"
    goto :goto_0

    .line 198
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ConsumeHistoryResult;>;"
    const/16 v0, 0x9

    .line 199
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 198
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ConsumeHistoryResult;>;"
    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "islocal"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/cmdm/control/logic/h;->isLocal:Z

    .line 39
    return-void
.end method

.method public al()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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
    const/4 v2, 0x0

    .line 210
    const/4 v8, 0x0

    .line 212
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PointsBalance;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    .line 215
    iget-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    .line 216
    iget v4, p0, Lcom/cmdm/control/logic/h;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    .line 215
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/g;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 226
    :goto_0
    return-object v8

    .line 218
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 219
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PointsBalance;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 218
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PointsBalance;>;"
    goto :goto_0

    .line 223
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PointsBalance;>;"
    const/16 v0, 0x9

    .line 224
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 223
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PointsBalance;>;"
    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
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
    .line 121
    const/4 v12, 0x0

    .line 122
    .local v12, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ChargeHistoryResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    iget-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    .line 126
    iget v8, p0, Lcom/cmdm/control/logic/h;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 124
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    .line 137
    :goto_0
    return-object v12

    .line 128
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .line 129
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ChargeHistoryResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 130
    const/4 v2, 0x0

    .line 128
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ChargeHistoryResult;>;"
    goto :goto_0

    .line 133
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ChargeHistoryResult;>;"
    const/16 v0, 0x9

    .line 134
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 133
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ChargeHistoryResult;>;"
    goto :goto_0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v10, 0x0

    .line 70
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    iget-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/h;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    .line 74
    iget-object v8, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 72
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 82
    :goto_0
    return-object v10

    .line 76
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 77
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 76
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 80
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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
    const/4 v2, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GainIntegralLogResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/h;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/cmdm/control/logic/h;->cg:Lcom/cmdm/control/dao/g;

    iget-object v1, p0, Lcom/cmdm/control/logic/h;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/h;->v:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/cmdm/control/logic/h;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/h;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/h;->mContext:Landroid/content/Context;

    .line 156
    iget-object v8, p0, Lcom/cmdm/control/logic/h;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/h;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 154
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 167
    :goto_0
    return-object v10

    .line 158
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 159
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GainIntegralLogResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 158
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GainIntegralLogResult;>;"
    goto :goto_0

    .line 163
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GainIntegralLogResult;>;"
    const/16 v0, 0x9

    .line 164
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 163
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GainIntegralLogResult;>;"
    goto :goto_0
.end method
