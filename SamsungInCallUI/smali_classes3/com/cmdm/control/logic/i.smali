.class public Lcom/cmdm/control/logic/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private ch:Lcom/cmdm/control/dao/h;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 61
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 62
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 66
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/cmdm/control/dao/h;->aR()Lcom/cmdm/control/dao/h;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 72
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 74
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1562
    const/4 v11, 0x0

    .line 1563
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1567
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1568
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    .line 1566
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 1582
    :goto_0
    return-object v11

    .line 1570
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 1571
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1570
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1574
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 1575
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 1574
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1578
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1579
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1578
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public A(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "crstype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 371
    const/4 v10, 0x0

    .line 372
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 376
    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 377
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 376
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 388
    :goto_0
    return-object v10

    .line 379
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    const/16 v0, 0x8

    .line 380
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 379
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    goto :goto_0

    .line 384
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    const/16 v0, 0x12

    .line 385
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 384
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    goto :goto_0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "crstype"    # Ljava/lang/String;
    .param p2, "taskid"    # Ljava/lang/String;
    .param p3, "diyVideoPath"    # Ljava/lang/String;

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1612
    iget-object v6, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 1613
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1611
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 1622
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v11

    .line 1615
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    .line 1616
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1615
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1619
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x12

    .line 1620
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1619
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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
            "Lcom/cmdm/control/bean/SubjectResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 522
    const/4 v9, 0x0

    .line 523
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 526
    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 525
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 537
    :goto_0
    return-object v9

    .line 528
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 529
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 528
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    goto :goto_0

    .line 533
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    const/16 v0, 0x12

    .line 534
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 533
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    goto :goto_0
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 583
    const/4 v9, 0x0

    .line 584
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 587
    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 588
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 586
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 599
    :goto_0
    return-object v9

    .line 590
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 591
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 590
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 595
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x12

    .line 596
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 595
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 614
    const/4 v9, 0x0

    .line 615
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 618
    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 619
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 617
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 630
    :goto_0
    return-object v9

    .line 621
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 622
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 621
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 626
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x12

    .line 627
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 626
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SubjectResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 864
    const/4 v10, 0x0

    .line 865
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 869
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 870
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 868
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 881
    :goto_0
    return-object v10

    .line 872
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 873
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 872
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    goto :goto_0

    .line 877
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    const/16 v0, 0x9

    .line 878
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 877
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    goto :goto_0
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1043
    const/4 v10, 0x0

    .line 1044
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1048
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 1049
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 1047
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 1061
    :goto_0
    return-object v10

    .line 1052
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1053
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1052
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0

    .line 1057
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x9

    .line 1058
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1057
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "visitId"    # Ljava/lang/String;

    .prologue
    .line 1252
    const/4 v10, 0x0

    .line 1253
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1258
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 1259
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 1257
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 1272
    :goto_0
    return-object v10

    .line 1261
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 1262
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1261
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1265
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "share_channel"    # Ljava/lang/String;

    .prologue
    .line 1313
    const/4 v10, 0x0

    .line 1314
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1318
    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1319
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 1317
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 1333
    :goto_0
    return-object v10

    .line 1321
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 1322
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1321
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1325
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 1326
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 1325
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1329
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1330
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1329
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public I(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 464
    const/4 v8, 0x0

    .line 465
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 468
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 469
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v2, p1

    .line 467
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 480
    :goto_0
    return-object v8

    .line 471
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 472
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 471
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 476
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v0, 0x12

    .line 477
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 476
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public J(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 758
    const/4 v9, 0x0

    .line 759
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 763
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 764
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 762
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 778
    :goto_0
    return-object v9

    .line 766
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 767
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 766
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 770
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 771
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 770
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 774
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 775
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 774
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public K(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DIYTextResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x34

    const/4 v2, 0x0

    .line 789
    const/4 v9, 0x0

    .line 790
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 795
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 800
    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 801
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 799
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 817
    :goto_0
    return-object v9

    .line 803
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 804
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    const/16 v0, 0x8

    .line 805
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 803
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    goto :goto_0

    .line 809
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    const/16 v0, 0x9

    .line 810
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 809
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    goto :goto_0

    .line 813
    :cond_3
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    const/16 v0, 0x12

    .line 814
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 813
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    goto :goto_0
.end method

.method public L(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "caiyinId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/Content;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 914
    const/4 v9, 0x0

    .line 915
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Content;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 920
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 921
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 919
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 935
    :goto_0
    return-object v9

    .line 923
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Content;>;"
    const/16 v0, 0x8

    .line 924
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 923
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Content;>;"
    goto :goto_0

    .line 931
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Content;>;"
    const/16 v0, 0x12

    .line 932
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 931
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Content;>;"
    goto :goto_0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxSortResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1498
    const/4 v11, 0x0

    .line 1499
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxSortResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1502
    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    .line 1501
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1514
    :goto_0
    return-object v11

    .line 1505
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1506
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxSortResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1505
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxSortResult;>;"
    goto :goto_0

    .line 1510
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxSortResult;>;"
    const/16 v0, 0x12

    .line 1511
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1510
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxSortResult;>;"
    goto :goto_0
.end method

.method public M(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "campaignId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaignDetailResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1228
    const/4 v9, 0x0

    .line 1229
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignDetailResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1233
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 1234
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 1232
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 1245
    :goto_0
    return-object v9

    .line 1236
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1237
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignDetailResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1236
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignDetailResult;>;"
    goto :goto_0

    .line 1241
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignDetailResult;>;"
    const/16 v0, 0x9

    .line 1242
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1241
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignDetailResult;>;"
    goto :goto_0
.end method

.method public N(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 1282
    const/4 v9, 0x0

    .line 1283
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1288
    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1289
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 1287
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 1302
    :goto_0
    return-object v9

    .line 1291
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 1292
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1291
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1295
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public O(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "searchContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetMatchListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1454
    const/4 v9, 0x0

    .line 1455
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetMatchListResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1458
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1459
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 1457
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 1470
    :goto_0
    return-object v9

    .line 1461
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1462
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetMatchListResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1461
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetMatchListResult;>;"
    goto :goto_0

    .line 1466
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetMatchListResult;>;"
    const/16 v0, 0x12

    .line 1467
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1466
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetMatchListResult;>;"
    goto :goto_0
.end method

.method public P(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ActivityInfoResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1586
    const/4 v9, 0x0

    .line 1587
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ActivityInfoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1590
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1591
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 1589
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 1602
    :goto_0
    return-object v9

    .line 1593
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1594
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ActivityInfoResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1593
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ActivityInfoResult;>;"
    goto :goto_0

    .line 1598
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ActivityInfoResult;>;"
    const/16 v0, 0x12

    .line 1599
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1598
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ActivityInfoResult;>;"
    goto :goto_0
.end method

.method public Q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "starId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StarDetailResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1672
    const/4 v9, 0x0

    .line 1673
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1674
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1677
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1678
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 1676
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 1692
    :goto_0
    return-object v9

    .line 1680
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1681
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    const/16 v0, 0x8

    .line 1682
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1680
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    goto :goto_0

    .line 1685
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    const/16 v0, 0x9

    .line 1686
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 1685
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    goto :goto_0

    .line 1689
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    const/16 v0, 0x12

    .line 1690
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1689
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarDetailResult;>;"
    goto :goto_0
.end method

.method public a(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/TopicList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v13, 0x0

    .line 98
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "topic"

    const-string v3, ""

    const-string v4, ""

    .line 101
    const-string v7, ""

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 102
    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v5, p1

    move/from16 v6, p2

    .line 100
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 112
    :goto_0
    return-object v13

    .line 104
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicList;>;"
    const/16 v0, 0x8

    .line 105
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 104
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicList;>;"
    goto :goto_0

    .line 108
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicList;>;"
    const/16 v0, 0x12

    .line 109
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 108
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicList;>;"
    goto :goto_0
.end method

.method public a(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "topic_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const/16 v16, 0x0

    .line 246
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v3, "topic"

    .line 249
    const-string v5, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cmdm/control/logic/i;->bY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v14, "0"

    .line 251
    const/4 v15, 0x0

    move-object/from16 v4, p3

    move/from16 v6, p1

    move/from16 v7, p2

    .line 248
    invoke-virtual/range {v1 .. v15}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v16

    .line 262
    :goto_0
    return-object v16

    .line 253
    :cond_0
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 254
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 255
    const/4 v3, 0x0

    .line 253
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 258
    :cond_1
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x12

    .line 259
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    .line 258
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "category_id"    # Ljava/lang/String;
    .param p4, "feetype"    # Ljava/lang/String;
    .param p5, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const/16 v16, 0x0

    .line 219
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v3, "category"

    .line 221
    const-string v5, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cmdm/control/logic/i;->bY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object/from16 v4, p3

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v14, p4

    move/from16 v15, p5

    .line 220
    invoke-virtual/range {v1 .. v15}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v16

    .line 229
    :goto_0
    return-object v16

    .line 225
    :cond_0
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x8

    .line 226
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    .line 225
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "category_id"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CategoryList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    const/4 v10, 0x0

    .line 156
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CategoryList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 159
    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 160
    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 158
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 170
    :goto_0
    return-object v10

    .line 162
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CategoryList;>;"
    const/16 v0, 0x8

    .line 163
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 162
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CategoryList;>;"
    goto :goto_0

    .line 166
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CategoryList;>;"
    const/16 v0, 0x12

    .line 167
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 166
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CategoryList;>;"
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "sortId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .param p4, "feeType"    # Ljava/lang/String;
    .param p5, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1013
    const/4 v13, 0x0

    .line 1014
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1018
    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 1019
    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 1017
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 1031
    :goto_0
    return-object v13

    .line 1022
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1023
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1024
    const/4 v2, 0x0

    .line 1022
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0

    .line 1027
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x9

    .line 1028
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 1027
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "sortId"    # Ljava/lang/String;
    .param p4, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    const/4 v11, 0x0

    .line 679
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 682
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 683
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v10, p4

    .line 681
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 694
    :goto_0
    return-object v11

    .line 685
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 686
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 687
    const/4 v2, 0x0

    .line 685
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 690
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x12

    .line 691
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 690
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "isLocalCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetResourceListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1520
    const/4 v10, 0x0

    .line 1522
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetResourceListResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1524
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move v9, p2

    .line 1523
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 1535
    :goto_0
    return-object v10

    .line 1527
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1528
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetResourceListResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 1527
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetResourceListResult;>;"
    goto :goto_0
.end method

.method public am()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SearchHots;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v7, 0x0

    .line 304
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SearchHots;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 307
    iget-object v4, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 306
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/h;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 317
    :goto_0
    return-object v7

    .line 309
    :cond_0
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SearchHots;>;"
    const/16 v0, 0x8

    .line 310
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 309
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SearchHots;>;"
    goto :goto_0

    .line 313
    :cond_1
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SearchHots;>;"
    const/16 v0, 0x12

    .line 314
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 313
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SearchHots;>;"
    goto :goto_0
.end method

.method public an()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 491
    const/4 v7, 0x0

    .line 492
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 495
    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 496
    iget v3, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 495
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/h;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 508
    :goto_0
    return-object v7

    .line 498
    :cond_0
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .line 499
    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 498
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 504
    :cond_1
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v0, 0x12

    .line 505
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 504
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public ao()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StatusResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 826
    const/4 v8, 0x0

    .line 827
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 832
    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 833
    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 831
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 849
    :goto_0
    return-object v8

    .line 835
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 836
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    const/16 v0, 0x8

    .line 837
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 835
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    goto :goto_0

    .line 841
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    const/16 v0, 0x9

    .line 842
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 841
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    goto :goto_0

    .line 845
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    const/16 v0, 0x12

    .line 846
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 845
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    goto :goto_0
.end method

.method public ap()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaignRecommendListResource;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1166
    const/4 v8, 0x0

    .line 1167
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignRecommendListResource;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 1172
    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1173
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 1171
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 1188
    :goto_0
    return-object v8

    .line 1175
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1176
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignRecommendListResource;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1175
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignRecommendListResource;>;"
    goto :goto_0

    .line 1184
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1185
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignRecommendListResource;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1184
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignRecommendListResource;>;"
    goto :goto_0
.end method

.method public aq()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaigTemplateStart;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1396
    const/4 v8, 0x0

    .line 1397
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaigTemplateStart;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 1402
    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1403
    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 1402
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 1418
    :goto_0
    return-object v8

    .line 1405
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1406
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaigTemplateStart;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1405
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaigTemplateStart;>;"
    goto :goto_0

    .line 1410
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaigTemplateStart;>;"
    const/16 v0, 0x9

    .line 1411
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1410
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaigTemplateStart;>;"
    goto :goto_0
.end method

.method public ar()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShareMessageResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1428
    const/4 v8, 0x0

    .line 1429
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShareMessageResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 1434
    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1435
    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    .line 1434
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 1450
    :goto_0
    return-object v8

    .line 1437
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1438
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShareMessageResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1437
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShareMessageResult;>;"
    goto :goto_0

    .line 1442
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShareMessageResult;>;"
    const/16 v0, 0x9

    .line 1443
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1442
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShareMessageResult;>;"
    goto :goto_0
.end method

.method public b(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/16 v16, 0x0

    .line 125
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v3, "recommends"

    .line 128
    const-string v4, ""

    const-string v5, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cmdm/control/logic/i;->bY:I

    .line 129
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v14, "0"

    const/4 v15, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 127
    invoke-virtual/range {v1 .. v15}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v16

    .line 140
    :goto_0
    return-object v16

    .line 131
    :cond_0
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 132
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 133
    const/4 v3, 0x0

    .line 131
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 136
    :cond_1
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x12

    .line 137
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    .line 136
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public b(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "query_word"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    const/4 v11, 0x0

    .line 279
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    const-string v4, ""

    .line 282
    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 283
    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 281
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 294
    :goto_0
    return-object v11

    .line 285
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 286
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 285
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 290
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v0, 0x12

    .line 291
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 290
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "sortId"    # Ljava/lang/String;
    .param p4, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    const/4 v11, 0x0

    .line 712
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 715
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 716
    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v10, p4

    .line 714
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 726
    :goto_0
    return-object v11

    .line 718
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    const/16 v0, 0x8

    .line 719
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 718
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    goto :goto_0

    .line 722
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    const/16 v0, 0x12

    .line 723
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 722
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    goto :goto_0
.end method

.method public b(Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "isLocalCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SusFrameRecmndResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1541
    const/4 v9, 0x0

    .line 1543
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SusFrameRecmndResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1545
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v8, p1

    .line 1544
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 1556
    :goto_0
    return-object v9

    .line 1548
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1549
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SusFrameRecmndResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 1548
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SusFrameRecmndResult;>;"
    goto :goto_0
.end method

.method public c(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/16 v16, 0x0

    .line 186
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v3, "hots"

    const-string v4, ""

    .line 189
    const-string v5, ""

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cmdm/control/logic/i;->bY:I

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v14, "0"

    const/4 v15, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 188
    invoke-virtual/range {v1 .. v15}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v16

    .line 201
    :goto_0
    return-object v16

    .line 192
    :cond_0
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 193
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 194
    const/4 v3, 0x0

    .line 192
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 197
    :cond_1
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x12

    .line 198
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    .line 197
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public c(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "starId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/VideoStarResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1698
    const/4 v10, 0x0

    .line 1699
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VideoStarResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 1702
    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1703
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v9, p3

    .line 1701
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 1713
    :goto_0
    return-object v10

    .line 1705
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1706
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VideoStarResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1705
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VideoStarResult;>;"
    goto :goto_0

    .line 1710
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VideoStarResult;>;"
    const/16 v0, 0x12

    .line 1711
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1710
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VideoStarResult;>;"
    goto :goto_0
.end method

.method public d(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    const/16 v16, 0x0

    .line 424
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v3, "lasted"

    const-string v4, ""

    .line 427
    const-string v5, ""

    const-string v8, "3"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cmdm/control/logic/i;->bY:I

    .line 428
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v14, "0"

    const/4 v15, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 426
    invoke-virtual/range {v1 .. v15}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v16

    .line 439
    :goto_0
    return-object v16

    .line 430
    :cond_0
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 431
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 432
    const/4 v3, 0x0

    .line 430
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0

    .line 435
    :cond_1
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    const/16 v1, 0x12

    .line 436
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    .line 435
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    goto :goto_0
.end method

.method public d(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "starId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/PicStarResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1718
    const/4 v10, 0x0

    .line 1719
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PicStarResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 1722
    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1723
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v9, p3

    .line 1721
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 1733
    :goto_0
    return-object v10

    .line 1725
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1726
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PicStarResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1725
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PicStarResult;>;"
    goto :goto_0

    .line 1730
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PicStarResult;>;"
    const/16 v0, 0x12

    .line 1731
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1730
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PicStarResult;>;"
    goto :goto_0
.end method

.method public e(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StarListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1653
    const/4 v9, 0x0

    .line 1654
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarListResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    .line 1657
    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1658
    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    .line 1657
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 1668
    :goto_0
    return-object v9

    .line 1660
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1661
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarListResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1660
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarListResult;>;"
    goto :goto_0

    .line 1665
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarListResult;>;"
    const/16 v0, 0x12

    .line 1666
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1665
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StarListResult;>;"
    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/CampaignListResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    const/4 v12, 0x0

    .line 1140
    .local v12, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignListResource;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1144
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1145
    iget v8, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 1143
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    .line 1156
    :goto_0
    return-object v12

    .line 1147
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1148
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignListResource;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1149
    const/4 v2, 0x0

    .line 1147
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignListResource;>;"
    goto :goto_0

    .line 1152
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignListResource;>;"
    const/16 v0, 0x9

    .line 1153
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 1152
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignListResource;>;"
    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 13
    .param p1, "crstype"    # Ljava/lang/String;
    .param p2, "taskid"    # Ljava/lang/String;
    .param p3, "diyname"    # Ljava/lang/String;
    .param p4, "diyshare"    # Ljava/lang/String;

    .prologue
    .line 1628
    const/4 v12, 0x0

    .line 1629
    .local v12, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1630
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1633
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1634
    iget v8, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1632
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v12

    .line 1648
    :goto_0
    return-object v12

    .line 1636
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 1637
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1636
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1640
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 1641
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 1640
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1644
    :cond_2
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1645
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1644
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "subjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 554
    const/4 v10, 0x0

    .line 555
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 558
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 559
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 557
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 570
    :goto_0
    return-object v10

    .line 561
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 562
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 561
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 566
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x12

    .line 567
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 566
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentSortResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 645
    const/4 v10, 0x0

    .line 646
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentSortResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 649
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 650
    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 648
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 661
    :goto_0
    return-object v10

    .line 652
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 653
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentSortResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 652
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentSortResult;>;"
    goto :goto_0

    .line 657
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentSortResult;>;"
    const/16 v0, 0x12

    .line 658
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 657
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentSortResult;>;"
    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .param p1, "searchContent"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/GetSearchListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1476
    const/4 v12, 0x0

    .line 1477
    .local v12, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSearchListResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1480
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    .line 1481
    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 1479
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    .line 1492
    :goto_0
    return-object v12

    .line 1483
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1484
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSearchListResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1485
    const/4 v2, 0x0

    .line 1483
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSearchListResult;>;"
    goto :goto_0

    .line 1488
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSearchListResult;>;"
    const/16 v0, 0x12

    .line 1489
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1488
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSearchListResult;>;"
    goto :goto_0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "boxId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 737
    const/4 v10, 0x0

    .line 738
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 741
    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 742
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 740
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 753
    :goto_0
    return-object v10

    .line 744
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 745
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 744
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 749
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x12

    .line 750
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 749
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "subjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/TopicVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 886
    const/4 v11, 0x0

    .line 887
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicVideoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    .line 891
    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 892
    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 890
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 903
    :goto_0
    return-object v11

    .line 894
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 895
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicVideoResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 894
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicVideoResult;>;"
    goto :goto_0

    .line 899
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicVideoResult;>;"
    const/16 v0, 0x9

    .line 900
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 899
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicVideoResult;>;"
    goto :goto_0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
    .param p1, "diyName"    # Ljava/lang/String;
    .param p2, "isShare"    # Ljava/lang/String;
    .param p3, "diyPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    const/16 v18, 0x0

    .line 952
    .local v18, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 956
    const-string v4, "diy"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    .line 957
    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 958
    const-string v12, "0"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/i;->bY:I

    .line 959
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 955
    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v18

    .line 974
    :goto_0
    return-object v18

    .line 961
    :cond_0
    new-instance v18, Lcom/cmdm/control/util/client/ResultUtil;

    .line 962
    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    const/16 v1, 0x8

    .line 963
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    .line 961
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    goto :goto_0

    .line 966
    :cond_1
    new-instance v18, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    const/16 v1, 0x9

    .line 967
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    .line 966
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    goto :goto_0

    .line 970
    :cond_2
    new-instance v18, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    const/16 v1, 0x12

    .line 971
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    .line 970
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    goto :goto_0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "diyName"    # Ljava/lang/String;
    .param p2, "isShare"    # Ljava/lang/String;
    .param p3, "diyPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/VedioDiyResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 979
    const/4 v11, 0x0

    .line 980
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 984
    iget-object v6, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 985
    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 983
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1000
    :goto_0
    return-object v11

    .line 987
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 988
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    const/16 v0, 0x8

    .line 989
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 987
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    goto :goto_0

    .line 992
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    const/16 v0, 0x9

    .line 993
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 992
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    goto :goto_0

    .line 996
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    const/16 v0, 0x12

    .line 997
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 996
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    goto :goto_0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "isFee"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1074
    const/4 v11, 0x0

    .line 1075
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1079
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 1080
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1078
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1092
    :goto_0
    return-object v11

    .line 1083
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1084
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1083
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0

    .line 1088
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x9

    .line 1089
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1088
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "isFee"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/NewCRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1106
    const/4 v11, 0x0

    .line 1107
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    .line 1111
    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    .line 1112
    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1110
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1124
    :goto_0
    return-object v11

    .line 1115
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1116
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1115
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    goto :goto_0

    .line 1120
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    const/16 v0, 0x9

    .line 1121
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1120
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    goto :goto_0
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1197
    const/4 v11, 0x0

    .line 1198
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1203
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 1204
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1202
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1219
    :goto_0
    return-object v11

    .line 1206
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1207
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1206
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 1211
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x9

    .line 1212
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1211
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1342
    const/4 v11, 0x0

    .line 1343
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1347
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 1348
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1346
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1359
    :goto_0
    return-object v11

    .line 1350
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1351
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1350
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0

    .line 1355
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    const/16 v0, 0x9

    .line 1356
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1355
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    goto :goto_0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/NewCRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1369
    const/4 v11, 0x0

    .line 1370
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    .line 1374
    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    .line 1375
    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1373
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 1386
    :goto_0
    return-object v11

    .line 1377
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1378
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1377
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    goto :goto_0

    .line 1382
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    const/16 v0, 0x9

    .line 1383
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 1382
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    goto :goto_0
.end method
