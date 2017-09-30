.class public Lcom/cmdm/control/logic/i;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/i;->bY:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/h;->aR()Lcom/cmdm/control/dao/h;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/i;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public A(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public B(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public I(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public J(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public K(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/16 v2, 0x34

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    :goto_0
    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v4, p1

    goto :goto_0
.end method

.method public L(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public M(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public N(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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
.end method

.method public O(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public P(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/TopicList;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "topic"

    const-string v3, ""

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "topic"

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v13, "0"

    const/4 v14, 0x0

    move-object/from16 v3, p3

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v14}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "category"

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public am()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SearchHots;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/h;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public an()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/h;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ao()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StatusResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ap()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaignRecommendListResource;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public aq()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaigTemplateStart;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public ar()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShareMessageResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/h;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public b(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "recommends"

    const-string v3, ""

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v13, "0"

    const/4 v14, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v14}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    const-string v4, ""

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SusFrameRecmndResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "hots"

    const-string v3, ""

    const-string v4, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v13, "0"

    const/4 v14, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v14}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    const-string v2, "lasted"

    const-string v3, ""

    const-string v4, ""

    const-string v7, "3"

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    const-string v13, "0"

    const/4 v14, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v14}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StarListResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/h;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    const-string v4, "diy"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "="

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "0"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cmdm/control/logic/i;->bY:I

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

    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v2, 0x8

    const-string v3, "\u672a\u77e5\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v2, 0x9

    const-string v3, "\u672a\u77e5\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v2, 0x12

    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/i;->ch:Lcom/cmdm/control/dao/h;

    iget-object v1, p0, Lcom/cmdm/control/logic/i;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/i;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/i;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/i;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/i;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/i;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/i;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/h;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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
.end method
