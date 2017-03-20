.class public Lcom/cmdm/control/logic/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bV:Lcom/cmdm/control/dao/b;

.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 51
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 52
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/a;->bY:I

    .line 55
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/cmdm/control/dao/b;->aL()Lcom/cmdm/control/dao/b;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    .line 61
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 63
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/a;->bY:I

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "content_name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "picturePath"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v11, 0x0

    .line 135
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 141
    iget v7, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 139
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 154
    :goto_0
    return-object v11

    .line 143
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 144
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 143
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 147
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 148
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 147
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 151
    :cond_2
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 152
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 151
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 13
    .param p1, "moodLableId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v12, 0x0

    .line 379
    .local v12, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 383
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/a;->bY:I

    .line 384
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 382
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v12

    .line 398
    :goto_0
    return-object v12

    .line 386
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 387
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 386
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 390
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 391
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 390
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 394
    :cond_2
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 395
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 394
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 14
    .param p1, "optype"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/UserContent;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/UserContent;>;"
    const/4 v12, 0x0

    .line 237
    .local v12, "result":Lcom/cmdm/control/util/client/ResultEntity;
    new-instance v13, Lcom/cmdm/control/bean/UserListContent;

    invoke-direct {v13}, Lcom/cmdm/control/bean/UserListContent;-><init>()V

    .line 238
    .local v13, "ulc":Lcom/cmdm/control/bean/UserListContent;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/cmdm/control/bean/UserListContent;->setUserContentList(Ljava/util/ArrayList;)V

    .line 239
    invoke-static {v13}, Lcom/cmdm/control/util/ObjectToXml;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "contacts_xml":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 244
    iget-object v4, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 245
    iget v8, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v5, p1

    move-object/from16 v6, p2

    .line 243
    invoke-virtual/range {v1 .. v11}, Lcom/cmdm/control/dao/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v12

    .line 259
    :goto_0
    return-object v12

    .line 247
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x8

    .line 248
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 247
    invoke-direct {v12, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 251
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x9

    .line 252
    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 251
    invoke-direct {v12, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 255
    :cond_2
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 256
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 255
    invoke-direct {v12, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BillList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v10, 0x0

    .line 159
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 164
    iget-object v5, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 165
    iget-object v9, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 163
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 179
    :goto_0
    return-object v10

    .line 167
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    const/16 v0, 0x8

    .line 168
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 167
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    goto :goto_0

    .line 171
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    const/16 v0, 0x9

    .line 172
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 171
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    goto :goto_0

    .line 175
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    const/16 v0, 0x12

    .line 176
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 175
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SoftCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    const/4 v10, 0x0

    .line 210
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    .line 215
    iget-object v4, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    .line 216
    iget-object v8, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 214
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 231
    :goto_0
    return-object v10

    .line 218
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 219
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    const/16 v0, 0x8

    .line 220
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 218
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    goto :goto_0

    .line 223
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    const/16 v0, 0x9

    .line 224
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 223
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    goto :goto_0

    .line 227
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    const/16 v0, 0x12

    .line 228
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 227
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    goto :goto_0
.end method

.method public e(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 405
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 409
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 410
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 408
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 424
    :goto_0
    return-object v9

    .line 412
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 413
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 412
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 416
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 417
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 416
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 420
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 421
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 420
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "moodLableId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v10, 0x0

    .line 352
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 356
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/a;->bY:I

    .line 357
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 355
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 371
    :goto_0
    return-object v10

    .line 359
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 360
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 359
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 363
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 364
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 363
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 367
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 368
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 367
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "bwtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetBlankWhiteList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 183
    const/4 v9, 0x0

    .line 184
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    .line 190
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 188
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 205
    :goto_0
    return-object v9

    .line 192
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 193
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    const/16 v0, 0x8

    .line 194
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 192
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    goto :goto_0

    .line 197
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    const/16 v0, 0x9

    .line 198
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 197
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    goto :goto_0

    .line 201
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    const/16 v0, 0x12

    .line 202
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 201
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "shortMobile"    # Ljava/lang/String;
    .param p2, "longMobile"    # Ljava/lang/String;

    .prologue
    .line 544
    const/4 v10, 0x0

    .line 545
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 549
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 550
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 548
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 563
    :goto_0
    return-object v10

    .line 552
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 553
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 552
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 556
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 557
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 556
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 560
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 561
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 560
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsHarassMobileResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    const/4 v9, 0x0

    .line 591
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 593
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 592
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 600
    :goto_0
    return-object v9

    .line 596
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    const/16 v0, 0x12

    .line 597
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 596
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    goto :goto_0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "shortMobile"    # Ljava/lang/String;
    .param p2, "longMobile"    # Ljava/lang/String;

    .prologue
    .line 567
    const/4 v10, 0x0

    .line 568
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 572
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 573
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 571
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 586
    :goto_0
    return-object v10

    .line 575
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 576
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 575
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 579
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 580
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 579
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 583
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 584
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 583
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public j()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v2, p0, Lcom/cmdm/control/logic/a;->bY:I

    .line 86
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v6

    .line 97
    :goto_0
    return-object v6

    .line 88
    :cond_0
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .line 89
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 88
    invoke-direct {v6, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 93
    :cond_1
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/16 v0, 0x12

    .line 94
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 93
    invoke-direct {v6, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BillListResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 605
    const/4 v10, 0x0

    .line 606
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 611
    iget-object v5, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    .line 612
    iget-object v8, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    .line 610
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 627
    :goto_0
    return-object v10

    .line 614
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .line 615
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    const/16 v0, 0x8

    .line 616
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 614
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    goto :goto_0

    .line 619
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    const/16 v0, 0x9

    .line 620
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 619
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    goto :goto_0

    .line 623
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    const/16 v0, 0x12

    .line 624
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 623
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .prologue
    .line 645
    const/4 v10, 0x0

    .line 646
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 650
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 651
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 649
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 664
    :goto_0
    return-object v10

    .line 653
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 654
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 653
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 657
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 658
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 657
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 661
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 662
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 661
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public k()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 114
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 112
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 129
    :goto_0
    return-object v8

    .line 116
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 117
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    const/16 v0, 0x8

    .line 118
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 116
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    goto :goto_0

    .line 121
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    const/16 v0, 0x9

    .line 122
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 121
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    goto :goto_0

    .line 125
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    const/16 v0, 0x12

    .line 126
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 125
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .prologue
    .line 668
    const/4 v10, 0x0

    .line 669
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 673
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 674
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    .line 672
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 687
    :goto_0
    return-object v10

    .line 676
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 677
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 676
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 680
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 681
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 680
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 684
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 685
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 684
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public l()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BlackUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 263
    const/4 v8, 0x0

    .line 264
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 270
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 268
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 285
    :goto_0
    return-object v8

    .line 272
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 273
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    const/16 v0, 0x8

    .line 274
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 272
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    goto :goto_0

    .line 277
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    const/16 v0, 0x9

    .line 278
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 277
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    goto :goto_0

    .line 281
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    const/16 v0, 0x12

    .line 282
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 281
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    goto :goto_0
.end method

.method public m()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyMoodResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 289
    const/4 v8, 0x0

    .line 290
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 293
    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 292
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 302
    :goto_0
    return-object v8

    .line 295
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    const/16 v0, 0x9

    .line 296
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 295
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    goto :goto_0

    .line 299
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    const/16 v0, 0x12

    .line 300
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 299
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    goto :goto_0
.end method

.method public n()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyStatusResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v8, 0x0

    .line 308
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    .line 311
    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 312
    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 311
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 321
    :goto_0
    return-object v8

    .line 314
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    const/16 v0, 0x9

    .line 315
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 314
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    goto :goto_0

    .line 318
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    const/16 v0, 0x12

    .line 319
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 318
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    goto :goto_0
.end method

.method public o()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/InterestLableResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 329
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 328
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 334
    :goto_0
    return-object v8

    .line 331
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    const/16 v0, 0x12

    .line 332
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 331
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    goto :goto_0
.end method

.method public p()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v8, 0x0

    .line 339
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 341
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 340
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 346
    :goto_0
    return-object v8

    .line 343
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    const/16 v0, 0x12

    .line 344
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 343
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    goto :goto_0
.end method

.method public q()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwareResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    const/4 v8, 0x0

    .line 430
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 432
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 431
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 437
    :goto_0
    return-object v8

    .line 434
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    const/16 v0, 0x12

    .line 435
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 434
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    goto :goto_0
.end method

.method public r()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsNewUserResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 441
    const/4 v8, 0x0

    .line 442
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 446
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 447
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 445
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 462
    :goto_0
    return-object v8

    .line 449
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 450
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    const/16 v0, 0x8

    .line 451
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 449
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    goto :goto_0

    .line 454
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    const/16 v0, 0x9

    .line 455
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 454
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    goto :goto_0

    .line 458
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    const/16 v0, 0x12

    .line 459
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 458
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    goto :goto_0
.end method

.method public s()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/PraComCountResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 467
    const/4 v8, 0x0

    .line 468
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    .line 472
    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    .line 473
    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 471
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 488
    :goto_0
    return-object v8

    .line 475
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 476
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    const/16 v0, 0x8

    .line 477
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 475
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    goto :goto_0

    .line 480
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    const/16 v0, 0x9

    .line 481
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 480
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    goto :goto_0

    .line 484
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    const/16 v0, 0x12

    .line 485
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 484
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    goto :goto_0
.end method

.method public t()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    const/4 v8, 0x0

    .line 494
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 496
    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 495
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 502
    :goto_0
    return-object v8

    .line 498
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/16 v0, 0x12

    .line 499
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 498
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0
.end method

.method public u()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/Welcome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    const/4 v8, 0x0

    .line 508
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 510
    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 509
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 516
    :goto_0
    return-object v8

    .line 512
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    const/16 v0, 0x12

    .line 513
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 512
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    goto :goto_0
.end method

.method public v()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetCornetBindingResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 520
    const/4 v8, 0x0

    .line 521
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 525
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    .line 526
    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 524
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 540
    :goto_0
    return-object v8

    .line 528
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 529
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    const/16 v0, 0x8

    .line 530
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 528
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    goto :goto_0

    .line 533
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 534
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 533
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    goto :goto_0

    .line 537
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 538
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 537
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    goto :goto_0
.end method

.method public w()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobileTypeResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    const/4 v8, 0x0

    .line 632
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    .line 634
    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 633
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 640
    :goto_0
    return-object v8

    .line 636
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 637
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 636
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    goto :goto_0
.end method

.method public x()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetParaInfoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    const/4 v8, 0x0

    .line 692
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/cmdm/control/logic/a;->bV:Lcom/cmdm/control/dao/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/a;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/a;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/a;->bX:Ljava/lang/String;

    .line 694
    iget v4, p0, Lcom/cmdm/control/logic/a;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/a;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/a;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/a;->clientKey:Ljava/lang/String;

    .line 693
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 699
    :goto_0
    return-object v8

    .line 696
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    const/16 v0, 0x12

    .line 697
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 696
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    goto :goto_0
.end method
