.class public Lcom/cmdm/control/logic/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private ce:Lcom/cmdm/control/dao/e;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 29
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    .line 30
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/f;->bY:I

    .line 33
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/cmdm/control/dao/e;->aO()Lcom/cmdm/control/dao/e;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    .line 39
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 41
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/f;->bY:I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "starId"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v9, 0x0

    .line 379
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 383
    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    .line 384
    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 382
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 398
    :goto_0
    return-object v9

    .line 386
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 387
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 386
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 390
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 391
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 390
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 394
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 395
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 394
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "sgTypeid"    # Ljava/lang/String;
    .param p3, "mType"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v10, 0x0

    .line 322
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 326
    invoke-static {p1}, Lcom/cmdm/control/bean/Suggestion;->getSuggestion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    .line 327
    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p2

    move-object v9, p3

    .line 325
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 342
    :goto_0
    return-object v10

    .line 330
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 331
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 330
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 334
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 335
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 334
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 338
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 339
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 338
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 19
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "c_price"    # Ljava/lang/String;

    .prologue
    .line 61
    const/16 v18, 0x0

    .line 62
    .local v18, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v1, :cond_0

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 66
    const-string v4, "favorite"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 67
    sget-object v12, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/f;->bY:I

    .line 68
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 65
    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v18

    .line 82
    :goto_0
    return-object v18

    .line 70
    :cond_0
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x8

    .line 71
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 70
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 74
    :cond_1
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x9

    .line 75
    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 74
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 78
    :cond_2
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 79
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 78
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public s(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v11, 0x0

    .line 125
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 129
    const-string v3, "favorite"

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    .line 130
    iget v7, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 128
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 144
    :goto_0
    return-object v11

    .line 132
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 133
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 132
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 136
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 137
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 136
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 140
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 141
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 140
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 19
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "c_price"    # Ljava/lang/String;

    .prologue
    .line 93
    const/16 v18, 0x0

    .line 94
    .local v18, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v1, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 98
    const-string v4, "favorite"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 99
    sget-object v12, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/f;->bY:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 97
    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v18

    .line 114
    :goto_0
    return-object v18

    .line 102
    :cond_0
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x8

    .line 103
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 102
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 106
    :cond_1
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x9

    .line 107
    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 106
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 110
    :cond_2
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 111
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 110
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public t(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v11, 0x0

    .line 155
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 159
    const-string v3, "favorite"

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    .line 160
    iget v7, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 158
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 174
    :goto_0
    return-object v11

    .line 162
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 163
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 162
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 166
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 167
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 166
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 170
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 171
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 170
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public u(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v9, 0x0

    .line 186
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 190
    const-string v1, "support"

    invoke-static {v1}, Lcom/cmdm/control/bean/CrsVote;->getCrsVote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    .line 191
    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 189
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 202
    :goto_0
    return-object v9

    .line 193
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 194
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 193
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 198
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 199
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 198
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public v(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v9, 0x0

    .line 207
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 210
    const-string v1, "oppose"

    invoke-static {v1}, Lcom/cmdm/control/bean/CrsVote;->getCrsVote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    .line 211
    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 209
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 221
    :goto_0
    return-object v9

    .line 213
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 214
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 213
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 217
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 218
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 217
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public w(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v9, 0x0

    .line 232
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    .line 236
    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 234
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 246
    :goto_0
    return-object v9

    .line 238
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 239
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 238
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 242
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 243
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 242
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public x(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v9, 0x0

    .line 257
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    .line 262
    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 260
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 276
    :goto_0
    return-object v9

    .line 264
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 265
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 264
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 268
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 269
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 268
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 272
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 273
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 272
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 286
    const/4 v9, 0x0

    .line 287
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    .line 293
    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 291
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 308
    :goto_0
    return-object v9

    .line 295
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 296
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 295
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 299
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 300
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 299
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 304
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 305
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 304
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public z(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "friend"    # Ljava/lang/String;
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

    .prologue
    const/4 v2, 0x0

    .line 346
    const/4 v9, 0x0

    .line 347
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CavassResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 354
    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    .line 355
    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 353
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 373
    :goto_0
    return-object v9

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    const-string v1, ""

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    .line 358
    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    .line 359
    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 357
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    goto :goto_0

    .line 362
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CavassResult;>;"
    const/16 v0, 0x8

    .line 363
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 362
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CavassResult;>;"
    goto :goto_0

    .line 370
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CavassResult;>;"
    const/16 v0, 0x12

    .line 371
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 370
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CavassResult;>;"
    goto :goto_0
.end method
