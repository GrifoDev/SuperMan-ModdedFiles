.class public Lcom/cmdm/control/logic/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field private cs:Lcom/cmdm/control/dao/j;

.field isLocal:Z

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->cs:Lcom/cmdm/control/dao/j;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->bW:Ljava/lang/String;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->v:Ljava/lang/String;

    .line 28
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->bX:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cmdm/control/logic/l;->isLocal:Z

    .line 30
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/l;->bY:I

    .line 33
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/cmdm/control/logic/l;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/cmdm/control/dao/j;->aT()Lcom/cmdm/control/dao/j;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->cs:Lcom/cmdm/control/dao/j;

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

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->bW:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->v:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->clientid:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->clientKey:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/l;->bX:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/l;->bY:I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "product_id"    # Ljava/lang/String;
    .param p2, "behaviorType"    # Ljava/lang/String;
    .param p3, "objcetid"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v11, 0x0

    .line 92
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->cs:Lcom/cmdm/control/dao/j;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->cs:Lcom/cmdm/control/dao/j;

    iget-object v1, p0, Lcom/cmdm/control/logic/l;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/l;->v:Ljava/lang/String;

    .line 96
    iget-object v6, p0, Lcom/cmdm/control/logic/l;->bX:Ljava/lang/String;

    .line 97
    iget v7, p0, Lcom/cmdm/control/logic/l;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/l;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/l;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/l;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 95
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/j;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 111
    :goto_0
    return-object v11

    .line 99
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 100
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 99
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 103
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 104
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 103
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 107
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 108
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 107
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public ab(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BusinessPackageResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/l;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->cs:Lcom/cmdm/control/dao/j;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cmdm/control/logic/l;->cs:Lcom/cmdm/control/dao/j;

    iget-object v1, p0, Lcom/cmdm/control/logic/l;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/l;->v:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/cmdm/control/logic/l;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/l;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/l;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/l;->clientid:Ljava/lang/String;

    .line 63
    iget-object v8, p0, Lcom/cmdm/control/logic/l;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/j;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 78
    :goto_0
    return-object v9

    .line 65
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 66
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    const/16 v0, 0x8

    .line 67
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 65
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    goto :goto_0

    .line 70
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 71
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 70
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    goto :goto_0

    .line 74
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 75
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 74
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    goto :goto_0
.end method
