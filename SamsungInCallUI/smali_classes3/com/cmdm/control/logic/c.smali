.class public Lcom/cmdm/control/logic/c;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    .line 21
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    .line 22
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/c;->bY:I

    .line 25
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lcom/cmdm/control/dao/c;->aM()Lcom/cmdm/control/dao/c;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    .line 31
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 33
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bZ:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/c;->bY:I

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 19
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "c_price"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 116
    const/16 v18, 0x0

    .line 117
    .local v18, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
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

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    const-string v4, "paids"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    .line 123
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    .line 124
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

    .line 121
    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v18

    .line 147
    :goto_0
    return-object v18

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    const-string v4, "paids"

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    .line 130
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    .line 131
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

    .line 128
    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v18

    goto :goto_0

    .line 134
    :cond_1
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x8

    .line 135
    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    .line 134
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 139
    :cond_2
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x9

    .line 140
    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 139
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 143
    :cond_3
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 144
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 143
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v18    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public R()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserTotalCost;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 213
    const/4 v8, 0x0

    .line 214
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
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

    .line 216
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    .line 219
    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    .line 217
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 234
    :goto_0
    return-object v8

    .line 221
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 222
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    const/16 v0, 0x8

    .line 223
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 221
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    goto :goto_0

    .line 226
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    const/16 v0, 0x9

    .line 227
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 226
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    goto :goto_0

    .line 230
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    const/16 v0, 0x12

    .line 231
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 230
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    goto :goto_0
.end method

.method public S()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GraphVerifyCode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v8, 0x0

    .line 185
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
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

    .line 187
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    .line 190
    iget-object v6, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    .line 188
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 205
    :goto_0
    return-object v8

    .line 192
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 193
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    const/16 v0, 0x8

    .line 194
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 192
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    goto :goto_0

    .line 197
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    const/16 v0, 0x9

    .line 198
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 197
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    goto :goto_0

    .line 201
    :cond_2
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    const/16 v0, 0x12

    .line 202
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 201
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    goto :goto_0
.end method

.method public T()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    .prologue
    .line 245
    const/4 v8, 0x0

    .line 246
    .local v8, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    .line 248
    iget-object v4, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    .line 253
    :goto_0
    return-object v8

    .line 250
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 251
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 250
    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v9, 0x0

    .line 53
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
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

    .line 56
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    .line 59
    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 57
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 73
    :goto_0
    return-object v9

    .line 61
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 62
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 61
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 65
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 66
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 65
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 69
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 70
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 69
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public l(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "boxId"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v9, 0x0

    .line 84
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
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

    .line 86
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/c;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    .line 89
    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 87
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 103
    :goto_0
    return-object v9

    .line 91
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 92
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 91
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 95
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 96
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 95
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 99
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 100
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 99
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public m(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "contentId"    # Ljava/lang/String;
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

    .prologue
    const/4 v2, 0x0

    .line 155
    const/4 v9, 0x0

    .line 156
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
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

    .line 158
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/cmdm/control/logic/c;->cb:Lcom/cmdm/control/dao/c;

    iget-object v1, p0, Lcom/cmdm/control/logic/c;->bW:Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lcom/cmdm/control/logic/c;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/c;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/c;->bY:I

    .line 161
    iget-object v6, p0, Lcom/cmdm/control/logic/c;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/c;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/c;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 159
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v9

    .line 176
    :goto_0
    return-object v9

    .line 163
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 164
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    const/16 v0, 0x8

    .line 165
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 163
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    goto :goto_0

    .line 168
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 169
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 168
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    goto :goto_0

    .line 172
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .line 173
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 172
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    goto :goto_0
.end method
