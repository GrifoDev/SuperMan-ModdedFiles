.class public Lcom/cmdm/control/logic/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cf:Lcom/cmdm/control/dao/f;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    .line 40
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    .line 41
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/g;->bY:I

    .line 45
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/cmdm/control/dao/f;->aP()Lcom/cmdm/control/dao/f;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    .line 51
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 53
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/g;->bY:I

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v9, 0x0

    .line 146
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 151
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 149
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 164
    :goto_0
    return-object v9

    .line 153
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 154
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 153
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 157
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 158
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 157
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 161
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 162
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 161
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "switchFlag"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v9, 0x0

    .line 220
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 225
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 223
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 238
    :goto_0
    return-object v9

    .line 227
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 228
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 227
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 231
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 232
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 231
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 235
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 236
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 235
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public D(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v9, 0x0

    .line 244
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 249
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 247
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 262
    :goto_0
    return-object v9

    .line 251
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 252
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 251
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 255
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 256
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 255
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 259
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 260
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 259
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public E(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "activityCode"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v9, 0x0

    .line 460
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 464
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 465
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 463
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 478
    :goto_0
    return-object v9

    .line 467
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 468
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 467
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 471
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 472
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 471
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 475
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 476
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 475
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public F(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "prizeId"    # Ljava/lang/String;

    .prologue
    .line 482
    const/4 v9, 0x0

    .line 483
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 487
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 488
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 486
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 501
    :goto_0
    return-object v9

    .line 490
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 491
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 490
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 494
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 495
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 494
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 498
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 499
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 498
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public G(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "extensionKey"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v9, 0x0

    .line 555
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 558
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 559
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 557
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 568
    :goto_0
    return-object v9

    .line 561
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 562
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 561
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 565
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 566
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 565
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public ab()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/FzTopicResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    .line 77
    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    .line 78
    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 77
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 88
    :goto_0
    return-object v8

    .line 80
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 81
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 80
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicResult;>;"
    goto :goto_0

    .line 85
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicResult;>;"
    const/16 v0, 0x12

    .line 86
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 85
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicResult;>;"
    goto :goto_0
.end method

.method public ac()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RebateAmountResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 126
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 124
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 140
    :goto_0
    return-object v8

    .line 128
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 129
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    const/16 v0, 0x8

    .line 130
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 128
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    goto :goto_0

    .line 133
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    const/16 v0, 0x9

    .line 134
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 133
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    goto :goto_0

    .line 137
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    const/16 v0, 0x12

    .line 138
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 137
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RebateAmountResult;>;"
    goto :goto_0
.end method

.method public ad()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ExchangeListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 267
    const/4 v8, 0x0

    .line 268
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 272
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 273
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 271
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 287
    :goto_0
    return-object v8

    .line 275
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 276
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    const/16 v0, 0x8

    .line 277
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 275
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    goto :goto_0

    .line 280
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    const/16 v0, 0x9

    .line 281
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 280
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    goto :goto_0

    .line 284
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    const/16 v0, 0x12

    .line 285
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 284
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ExchangeListResult;>;"
    goto :goto_0
.end method

.method public ae()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    .prologue
    .line 292
    const/4 v8, 0x0

    .line 293
    .local v8, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 297
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 298
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 296
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    .line 311
    :goto_0
    return-object v8

    .line 300
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 301
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 300
    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 304
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 305
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 304
    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 308
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 309
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 308
    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public af()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetPrizeListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 342
    const/4 v8, 0x0

    .line 343
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 348
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 346
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 362
    :goto_0
    return-object v8

    .line 350
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 351
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    const/16 v0, 0x8

    .line 352
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 350
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    goto :goto_0

    .line 355
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 356
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 355
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    goto :goto_0

    .line 359
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    const/16 v0, 0x12

    .line 360
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 359
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetPrizeListResponse;>;"
    goto :goto_0
.end method

.method public ag()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 367
    const/4 v8, 0x0

    .line 368
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetActivityInfo;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    .line 371
    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    .line 372
    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 371
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 382
    :goto_0
    return-object v8

    .line 374
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 375
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetActivityInfo;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 374
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetActivityInfo;>;"
    goto :goto_0

    .line 379
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetActivityInfo;>;"
    const/16 v0, 0x12

    .line 380
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 379
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetActivityInfo;>;"
    goto :goto_0
.end method

.method public ah()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetUserCoupon;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 387
    const/4 v8, 0x0

    .line 388
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 392
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 393
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 391
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 407
    :goto_0
    return-object v8

    .line 395
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 396
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    const/16 v0, 0x8

    .line 397
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 395
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    goto :goto_0

    .line 400
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    const/16 v0, 0x9

    .line 401
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 400
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    goto :goto_0

    .line 404
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    const/16 v0, 0x12

    .line 405
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 404
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserCoupon;>;"
    goto :goto_0
.end method

.method public ai()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetUserSignInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 435
    const/4 v8, 0x0

    .line 436
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 440
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 441
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 439
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 455
    :goto_0
    return-object v8

    .line 443
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 444
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    const/16 v0, 0x8

    .line 445
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 443
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    goto :goto_0

    .line 448
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    const/16 v0, 0x9

    .line 449
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 448
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    goto :goto_0

    .line 452
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    const/16 v0, 0x12

    .line 453
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 452
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserSignInfo;>;"
    goto :goto_0
.end method

.method public aj()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserSignRsp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 530
    const/4 v8, 0x0

    .line 531
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 535
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 536
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 534
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 550
    :goto_0
    return-object v8

    .line 538
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 539
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    const/16 v0, 0x8

    .line 540
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 538
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    goto :goto_0

    .line 543
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    const/16 v0, 0x9

    .line 544
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 543
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    goto :goto_0

    .line 547
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    const/16 v0, 0x12

    .line 548
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 547
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserSignRsp;>;"
    goto :goto_0
.end method

.method public ak()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsNewUserSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 573
    const/4 v8, 0x0

    .line 574
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 578
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 579
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    .line 577
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/f;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 593
    :goto_0
    return-object v8

    .line 581
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 582
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    const/16 v0, 0x8

    .line 583
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 581
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    goto :goto_0

    .line 586
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    const/16 v0, 0x9

    .line 587
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 586
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    goto :goto_0

    .line 590
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    const/16 v0, 0x12

    .line 591
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 590
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserSet;>;"
    goto :goto_0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "queryType"    # Ljava/lang/String;
    .param p4, "sequenceType"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/FzTopicTxtResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v12, 0x0

    .line 94
    .local v12, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicTxtResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 100
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 98
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    .line 115
    :goto_0
    return-object v12

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    const-string v1, ""

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 104
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 102
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    goto :goto_0

    .line 107
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .line 108
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicTxtResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 109
    const/4 v2, 0x0

    .line 107
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicTxtResult;>;"
    goto :goto_0

    .line 112
    :cond_2
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicTxtResult;>;"
    const/16 v0, 0x12

    .line 113
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 112
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/FzTopicTxtResult;>;"
    goto :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "queryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserTaskResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 199
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 200
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    .line 198
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 214
    :goto_0
    return-object v11

    .line 202
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 203
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    const/16 v0, 0x8

    .line 204
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 202
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    goto :goto_0

    .line 207
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    const/16 v0, 0x9

    .line 208
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 207
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    goto :goto_0

    .line 211
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    const/16 v0, 0x12

    .line 212
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 211
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTaskResult;>;"
    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    .line 506
    const/4 v9, 0x0

    .line 507
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 511
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 512
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/cmdm/control/bean/SendAddrInfo;->getRelevanceRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 510
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/f;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 526
    :goto_0
    return-object v9

    .line 515
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 516
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 515
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 519
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 520
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 519
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 523
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 524
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 523
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v10, 0x0

    .line 170
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 175
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 173
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 188
    :goto_0
    return-object v10

    .line 177
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 178
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 177
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 181
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 182
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 181
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 185
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 186
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 185
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetHistoryAmount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 317
    const/4 v10, 0x0

    .line 318
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 323
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 321
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/f;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 337
    :goto_0
    return-object v10

    .line 325
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 326
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    const/16 v0, 0x8

    .line 327
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 325
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    goto :goto_0

    .line 330
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    const/16 v0, 0x9

    .line 331
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 330
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    goto :goto_0

    .line 334
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    const/16 v0, 0x12

    .line 335
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 334
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetHistoryAmount;>;"
    goto :goto_0
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetSignList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 411
    const/4 v10, 0x0

    .line 412
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/g;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/cmdm/control/logic/g;->cf:Lcom/cmdm/control/dao/f;

    iget-object v1, p0, Lcom/cmdm/control/logic/g;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/g;->v:Ljava/lang/String;

    .line 416
    iget-object v3, p0, Lcom/cmdm/control/logic/g;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/g;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/g;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/g;->clientid:Ljava/lang/String;

    .line 417
    iget-object v7, p0, Lcom/cmdm/control/logic/g;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 415
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 431
    :goto_0
    return-object v10

    .line 419
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 420
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    const/16 v0, 0x8

    .line 421
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 419
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    goto :goto_0

    .line 424
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    const/16 v0, 0x9

    .line 425
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 424
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    goto :goto_0

    .line 428
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    const/16 v0, 0x12

    .line 429
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 428
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetSignList;>;"
    goto :goto_0
.end method
