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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bW:Ljava/lang/String;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->v:Ljava/lang/String;

    .line 25
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bX:Ljava/lang/String;

    .line 27
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/n;->bY:I

    .line 30
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bZ:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/cmdm/control/logic/n;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/cmdm/control/dao/l;->aV()Lcom/cmdm/control/dao/l;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    .line 36
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 38
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bW:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->v:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->clientid:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->clientKey:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bZ:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/n;->bX:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/n;->bY:I

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public ac(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "activityCode"    # Ljava/lang/String;
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

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetShareInfo;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/n;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cmdm/control/logic/n;->cu:Lcom/cmdm/control/dao/l;

    iget-object v1, p0, Lcom/cmdm/control/logic/n;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/n;->v:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/cmdm/control/logic/n;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/n;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/n;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/n;->clientid:Ljava/lang/String;

    .line 63
    iget-object v7, p0, Lcom/cmdm/control/logic/n;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/l;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 72
    :goto_0
    return-object v9

    .line 65
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetShareInfo;>;"
    const/16 v0, 0x8

    .line 66
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 65
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetShareInfo;>;"
    goto :goto_0

    .line 69
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetShareInfo;>;"
    const/16 v0, 0x12

    .line 70
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 69
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetShareInfo;>;"
    goto :goto_0
.end method
