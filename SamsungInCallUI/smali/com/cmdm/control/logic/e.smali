.class public Lcom/cmdm/control/logic/e;
.super Ljava/lang/Object;


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cd:Lcom/cmdm/control/dao/d;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/e;->bY:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/d;->aN()Lcom/cmdm/control/dao/d;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/e;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/NewContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/AddContactResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/cmdm/control/bean/NewContactInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/NewContactInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/NewContactInfo;->setNewContactList(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/cmdm/control/util/ObjectToXml;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

.method public aa()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/AuthedContact;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/d;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

.method public p(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    invoke-static {p1}, Lcom/cmdm/control/bean/CxContacts;->getCxContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "1"

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public q(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CxContact;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    invoke-static {p1}, Lcom/cmdm/control/bean/CxContacts;->getCxContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "2"

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

.method public r(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/e;->cd:Lcom/cmdm/control/dao/d;

    iget-object v1, p0, Lcom/cmdm/control/logic/e;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/e;->v:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/cmdm/control/logic/e;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/e;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/e;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/e;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/e;->clientKey:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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
