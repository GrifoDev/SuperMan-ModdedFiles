.class public Lcom/cmdm/control/logic/c;
.super Ljava/lang/Object;


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cb:Lcom/cmdm/control/dao/c;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/c;->bY:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/c;->aM()Lcom/cmdm/control/dao/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/c;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v1, :cond_1

    const-string v1, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    const-string v4, "paids"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/c;->bY:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    const-string v4, "paids"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/c;->bY:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x8

    const-string v3, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x9

    const-string v3, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x12

    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public R()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserTotalCost;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public S()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GraphVerifyCode;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public T()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 8

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
