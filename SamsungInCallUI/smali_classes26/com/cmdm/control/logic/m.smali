.class public Lcom/cmdm/control/logic/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field private ct:Lcom/cmdm/control/dao/k;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 32
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    .line 34
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/m;->bY:I

    .line 37
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/cmdm/control/dao/k;->aU()Lcom/cmdm/control/dao/k;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    .line 43
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 45
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/m;->bY:I

    .line 55
    :cond_0
    return-void
.end method

.method private a(Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .param p1, "crsprofile"    # Lcom/cmdm/control/bean/CRSProfile;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/bean/CRSProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 121
    .local v8, "result":Lcom/cmdm/control/util/client/ResultEntity;
    if-eqz p4, :cond_1

    const-string v0, "1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 125
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 123
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    .line 145
    :cond_0
    :goto_0
    return-object v8

    .line 129
    :cond_1
    if-eqz p4, :cond_2

    const-string v0, "2"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 134
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 132
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->b(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 142
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 141
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->c(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "contentSwitch"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v9, 0x0

    .line 231
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    .line 236
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 234
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/k;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 252
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

    .line 243
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 244
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 243
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 248
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 249
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 248
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "workDay"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v11, 0x0

    .line 339
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 343
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    .line 341
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/k;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 351
    :goto_0
    return-object v11

    .line 345
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 346
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 345
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 349
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "settingId"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v10, 0x0

    .line 276
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 279
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 280
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 278
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/k;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 288
    :goto_0
    return-object v10

    .line 282
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 283
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 282
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 286
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "starId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 376
    const/4 v10, 0x0

    .line 377
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 380
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 381
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 379
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/k;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 389
    :goto_0
    return-object v10

    .line 383
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 384
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 383
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 387
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 19
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "showType"    # Ljava/lang/String;
    .param p3, "txtId"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "greeting"    # Ljava/lang/String;
    .param p8, "workTimeSet"    # Ljava/lang/String;
    .param p9, "channelCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 79
    .local p7, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 80
    .local v18, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    if-eqz p6, :cond_0

    const-string v1, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x34

    if-le v1, v2, :cond_0

    .line 84
    const/4 v1, 0x0

    const/16 v2, 0x34

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    .line 88
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/cmdm/control/logic/m;->bY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p3

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    .line 88
    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v18

    .line 101
    :goto_0
    return-object v18

    .line 93
    :cond_1
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x9

    .line 94
    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 93
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 97
    :cond_2
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 98
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 97
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 14
    .param p1, "contentId"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "desString"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 167
    .local v13, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 171
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    .line 172
    iget v9, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 173
    iget-object v12, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 170
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v13

    .line 188
    :goto_0
    return-object v13

    .line 175
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 176
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 175
    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 179
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 180
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 179
    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 184
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 185
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 184
    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public aA()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SwitchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    const/4 v8, 0x0

    .line 257
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    .line 260
    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    .line 259
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 270
    :goto_0
    return-object v8

    .line 262
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    const/16 v0, 0x8

    .line 263
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 262
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    goto :goto_0

    .line 266
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    const/16 v0, 0x9

    .line 267
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 266
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    goto :goto_0
.end method

.method public aB()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/WorkTimeResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 356
    const/4 v8, 0x0

    .line 357
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    .line 360
    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    .line 361
    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    .line 360
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 371
    :goto_0
    return-object v8

    .line 363
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 364
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 363
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    goto :goto_0

    .line 368
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    const/16 v0, 0x9

    .line 369
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 368
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 14
    .param p1, "boxId"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "desString"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 204
    .local v13, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    .line 209
    iget v9, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 210
    iget-object v12, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 207
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v13

    .line 226
    :goto_0
    return-object v13

    .line 212
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 213
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 212
    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 217
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 218
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 217
    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 222
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 223
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 222
    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public c(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "settingId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingCommentResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 294
    const/4 v11, 0x0

    .line 295
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 298
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 299
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 300
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, p1

    .line 297
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 310
    :goto_0
    return-object v11

    .line 302
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 303
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 302
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    goto :goto_0

    .line 307
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    const/16 v0, 0x9

    .line 308
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 307
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    goto :goto_0
.end method

.method public d(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .param p1, "settingId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingPraiseResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 316
    const/4 v11, 0x0

    .line 317
    .local v11, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    .line 320
    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    .line 321
    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, p1

    .line 319
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    .line 332
    :goto_0
    return-object v11

    .line 324
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .line 325
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 324
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    goto :goto_0

    .line 329
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    const/16 v0, 0x9

    .line 330
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 329
    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    goto :goto_0
.end method
