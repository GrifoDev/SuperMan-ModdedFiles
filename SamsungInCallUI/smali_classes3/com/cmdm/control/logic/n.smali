.class public Lcom/cmdm/control/logic/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field private cu:Lcom/cmdm/control/dao/l;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bW:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->v:Ljava/lang/String;

    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bX:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/n;->bY:I

    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/n;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/l;->aV()Lcom/cmdm/control/dao/l;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/n;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public ac(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetShareInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/n;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    iget-object v1, p0, Lcom/cmdm/control/logic/n;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/n;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/n;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/n;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/n;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/n;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/n;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/l;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
