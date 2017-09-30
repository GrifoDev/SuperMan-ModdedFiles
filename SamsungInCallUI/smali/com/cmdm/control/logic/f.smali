.class public Lcom/cmdm/control/logic/f;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/f;->bY:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/e;->aO()Lcom/cmdm/control/dao/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/f;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmdm/control/bean/Suggestion;->getSuggestion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    const-string v4, "favorite"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/f;->bY:I

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

    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x8

    const-string v3, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x9

    const-string v3, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x12

    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public s(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    const-string v3, "favorite"

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    const-string v4, "favorite"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/f;->bY:I

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

    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x8

    const-string v3, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x9

    const-string v3, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x12

    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public t(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    const-string v3, "favorite"

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public u(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    const-string v1, "support"

    invoke-static {v1}, Lcom/cmdm/control/bean/CrsVote;->getCrsVote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    const-string v1, "oppose"

    invoke-static {v1}, Lcom/cmdm/control/bean/CrsVote;->getCrsVote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public w(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public x(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public z(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    iget-object v1, p0, Lcom/cmdm/control/logic/f;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/logic/f;->ce:Lcom/cmdm/control/dao/e;

    const-string v1, ""

    iget-object v2, p0, Lcom/cmdm/control/logic/f;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/f;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/f;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/f;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/f;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/f;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

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
