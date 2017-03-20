.class public Lcom/cmdm/control/logic/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cc:Lcom/cmdm/control/dao/a;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field isLocal:Z

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "CaiYinSDK"

    sput-object v0, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 47
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    .line 49
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 52
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/cmdm/control/dao/a;->aK()Lcom/cmdm/control/dao/a;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    .line 62
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 64
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public U()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cmdm/control/dao/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1102
    :cond_0
    return-object v0
.end method

.method public V()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cmdm/control/dao/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1115
    :cond_0
    return-object v0
.end method

.method public W()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cmdm/control/dao/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1128
    :cond_0
    return-object v0
.end method

.method public X()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 15

    .prologue
    .line 1190
    const/4 v12, 0x0

    .line 1191
    .local v12, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1193
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1194
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    .line 1196
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x2710

    .line 1197
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 1198
    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 1196
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 1200
    .local v14, "resultother":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    sget-object v0, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    const-string v1, "\u66f4\u65b0\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v14}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    .line 1205
    .local v11, "mBuddySettingsCRSList":Lcom/cmdm/control/bean/BuddySettingsCRSList;
    if-eqz v11, :cond_0

    .line 1207
    invoke-virtual {v11}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v11}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1210
    sget-object v0, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u66f4\u65b0\u6210\u529f,\u66f4\u65b0\u6761\u6570\u4e3a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v11}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    new-instance v10, Lcom/cmdm/control/biz/m;

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 1215
    .local v10, "cypb":Lcom/cmdm/control/biz/m;
    invoke-virtual {v11}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1214
    invoke-virtual {v10, v0}, Lcom/cmdm/control/biz/m;->r(Ljava/util/ArrayList;)V

    .line 1218
    .end local v10    # "cypb":Lcom/cmdm/control/biz/m;
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x1

    const-string v1, "\u66f4\u65b0\u6210\u529f"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v13, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_1
    sget-object v0, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    const-string v1, "\u66f4\u65b0\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v13

    .line 1238
    .end local v11    # "mBuddySettingsCRSList":Lcom/cmdm/control/bean/BuddySettingsCRSList;
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v14    # "resultother":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v12

    .line 1221
    .restart local v14    # "resultother":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :cond_1
    :try_start_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x0

    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1222
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_3
    sget-object v0, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v12, v13

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1226
    .end local v14    # "resultother":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :cond_2
    :try_start_4
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x0

    const-string v1, "\u8bf7\u767b\u5f55\u4e4b\u540e\u7ee7\u7eed\u64cd\u4f5c"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v12, v13

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1233
    :cond_3
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1234
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1233
    invoke-direct {v12, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v14    # "resultother":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :catch_1
    move-exception v0

    move-object v12, v13

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public Y()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsGroupUserResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    const/4 v7, 0x0

    .line 1263
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 1265
    iget v3, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 1264
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 1270
    :goto_0
    return-object v7

    .line 1267
    :cond_0
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    const/16 v0, 0x12

    .line 1268
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1267
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    goto :goto_0
.end method

.method public Z()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesFileResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    const/4 v7, 0x0

    .line 1276
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 1278
    iget v3, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 1277
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 1283
    :goto_0
    return-object v7

    .line 1280
    :cond_0
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1281
    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1280
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    goto :goto_0
.end method

.method public a(Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "showingCRS"    # Lcom/cmdm/control/bean/ShowingCRS;
    .param p2, "showmode"    # Ljava/lang/String;

    .prologue
    .line 1076
    const/4 v11, 0x0

    .line 1077
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 1080
    const-string v4, "2"

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 1081
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v5, p2

    .line 1079
    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    .line 1089
    :goto_0
    return-object v11

    .line 1083
    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1086
    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    const-string v1, "\u672a\u5feb\u901f\u767b\u5f55"

    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v14, 0x0

    .line 89
    .local v14, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 93
    sget-object v5, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 94
    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 95
    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 92
    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 110
    :goto_0
    return-object v14

    .line 97
    :cond_0
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 98
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v0, 0x8

    .line 99
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 97
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0

    .line 102
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v0, 0x9

    .line 103
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 102
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0

    .line 106
    :cond_2
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v0, 0x12

    .line 107
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 106
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "islocal"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    .line 56
    return-void
.end method

.method public b(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const/4 v14, 0x0

    .line 158
    .local v14, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 162
    sget-object v5, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 163
    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 164
    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 161
    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 179
    :goto_0
    return-object v14

    .line 166
    :cond_0
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 167
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v0, 0x8

    .line 168
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 166
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0

    .line 171
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v0, 0x9

    .line 172
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 171
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0

    .line 175
    :cond_2
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v0, 0x12

    .line 176
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 175
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/DIYContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    const/4 v13, 0x0

    .line 387
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 391
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 392
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 393
    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 390
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 408
    :goto_0
    return-object v13

    .line 395
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 396
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/16 v0, 0x8

    .line 397
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 395
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0

    .line 400
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/16 v0, 0x9

    .line 401
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 400
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0

    .line 404
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/16 v0, 0x12

    .line 405
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 404
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0
.end method

.method public c(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BuyContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v13, 0x0

    .line 226
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 230
    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 232
    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 229
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 248
    :goto_0
    return-object v13

    .line 234
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 235
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    const/16 v0, 0x8

    .line 236
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 234
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    goto :goto_0

    .line 239
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    const/16 v0, 0x9

    .line 240
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 239
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    goto :goto_0

    .line 244
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    const/16 v0, 0x12

    .line 245
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 244
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    const/4 v13, 0x0

    .line 573
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 577
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 578
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 579
    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 576
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 594
    :goto_0
    return-object v13

    .line 581
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 582
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x8

    .line 583
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 581
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 586
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 587
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 586
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 590
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x12

    .line 591
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 590
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0
.end method

.method public d(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDIYCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v13, 0x0

    .line 295
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 299
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 300
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 301
    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 298
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 316
    :goto_0
    return-object v13

    .line 303
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 304
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/16 v0, 0x8

    .line 305
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 303
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0

    .line 308
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/16 v0, 0x9

    .line 309
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 308
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0

    .line 312
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/16 v0, 0x12

    .line 313
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 312
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    const/4 v13, 0x0

    .line 688
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 692
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 693
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 694
    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 691
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 709
    :goto_0
    return-object v13

    .line 696
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 697
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x8

    .line 698
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 696
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 701
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 702
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 701
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 705
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x12

    .line 706
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 705
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0
.end method

.method public e(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    const/4 v14, 0x0

    .line 919
    .local v14, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 923
    sget-object v5, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 924
    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 925
    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 922
    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 940
    :goto_0
    return-object v14

    .line 927
    :cond_0
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 928
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v0, 0x8

    .line 929
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 927
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 932
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v0, 0x9

    .line 933
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 932
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 936
    :cond_2
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v0, 0x12

    .line 937
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 936
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    const/4 v13, 0x0

    .line 724
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 728
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 729
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 730
    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 727
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 745
    :goto_0
    return-object v13

    .line 732
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 733
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x8

    .line 734
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 732
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 737
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 738
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 737
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 741
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x12

    .line 742
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 741
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0
.end method

.method public f(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
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
    .line 120
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 121
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 125
    const-string v3, "paids"

    .line 126
    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 128
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 124
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 142
    :goto_0
    return-object v10

    .line 130
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 131
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 130
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 134
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 135
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 134
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 138
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 139
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 138
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public f(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    const/4 v14, 0x0

    .line 956
    .local v14, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 960
    sget-object v5, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 961
    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 962
    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 959
    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 977
    :goto_0
    return-object v14

    .line 964
    :cond_0
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 965
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v0, 0x8

    .line 966
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 964
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 969
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v0, 0x9

    .line 970
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 969
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 973
    :cond_2
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v0, 0x12

    .line 974
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 973
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "showcategory"    # Ljava/lang/String;
    .param p3, "friendMobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    const/4 v14, 0x0

    .line 612
    .local v14, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 616
    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    const-string v4, "0"

    const-string v5, "10000"

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 617
    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 618
    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 615
    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 633
    :goto_0
    return-object v14

    .line 620
    :cond_0
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 621
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x8

    .line 622
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 620
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 625
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 626
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 625
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 629
    :cond_2
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x12

    .line 630
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 629
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    const/4 v13, 0x0

    .line 850
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 854
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 855
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 856
    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 853
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 871
    :goto_0
    return-object v13

    .line 858
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 859
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x8

    .line 860
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 858
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 863
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x9

    .line 864
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 863
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 867
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v0, 0x12

    .line 868
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 867
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0
.end method

.method public g(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
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
    .line 189
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 190
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 194
    const-string v3, "paids"

    .line 195
    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 196
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 197
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 193
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 211
    :goto_0
    return-object v10

    .line 199
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 200
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 199
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 203
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 204
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 203
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 207
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 208
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 207
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "showcategory"    # Ljava/lang/String;
    .param p3, "friendMobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v14, 0x0

    .line 652
    .local v14, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 656
    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    const-string v4, "0"

    const-string v5, "10000"

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 657
    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 658
    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 655
    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v14

    .line 673
    :goto_0
    return-object v14

    .line 660
    :cond_0
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 661
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x8

    .line 662
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 660
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 665
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .line 666
    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 665
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 669
    :cond_2
    new-instance v14, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v0, 0x12

    .line 670
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 669
    invoke-direct {v14, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v14    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/MyDiyVideoList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1047
    const/4 v12, 0x0

    .line 1048
    .local v12, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 1051
    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 1052
    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 1050
    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    .line 1062
    :goto_0
    return-object v12

    .line 1054
    :cond_0
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1055
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 1054
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    goto :goto_0

    .line 1058
    :cond_1
    new-instance v12, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    const/16 v0, 0x9

    .line 1059
    const-string v1, "\u672a\u5feb\u901f\u767b\u5f55"

    const/4 v2, 0x0

    .line 1058
    invoke-direct {v12, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    goto :goto_0
.end method

.method public h(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 260
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 261
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 265
    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 266
    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 264
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 280
    :goto_0
    return-object v9

    .line 268
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 269
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 268
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 272
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 273
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 272
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 276
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 277
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 276
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "showmode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    const/4 v13, 0x0

    .line 1028
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v2, "2"

    .line 1031
    iget-object v6, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    .line 1032
    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p2

    .line 1030
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 1042
    :goto_0
    return-object v13

    .line 1034
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1035
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 1034
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 1038
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x9

    .line 1039
    const-string v1, "\u672a\u5feb\u901f\u767b\u5f55"

    const/4 v2, 0x0

    .line 1038
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0
.end method

.method public i(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
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
    .line 326
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 327
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v3, "diy"

    .line 331
    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 332
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 333
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 330
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 347
    :goto_0
    return-object v10

    .line 335
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 336
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 335
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 339
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 340
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 339
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 343
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 344
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 343
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public j(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 418
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 419
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 424
    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 422
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 438
    :goto_0
    return-object v9

    .line 426
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 427
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 426
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 430
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 431
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 430
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 434
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 435
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 434
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public k(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 782
    .local p1, "setIdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 784
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 788
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 789
    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 787
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 803
    :goto_0
    return-object v9

    .line 791
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 792
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 791
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 795
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 796
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 795
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 799
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 800
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 799
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public l(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 814
    .local p1, "setIdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 816
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    .line 820
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 821
    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 819
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 835
    :goto_0
    return-object v9

    .line 823
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 824
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 823
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 827
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 828
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 827
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 831
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 832
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 831
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public m(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 882
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 883
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    .line 887
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 888
    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 886
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 903
    :goto_0
    return-object v9

    .line 890
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 891
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 890
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 894
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 895
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 894
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 899
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 900
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 899
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public n(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
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
    .line 351
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 352
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 356
    const-string v3, "diy"

    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 358
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 355
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 372
    :goto_0
    return-object v10

    .line 360
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 361
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 360
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 364
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 365
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 364
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 368
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 369
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 368
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 5
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/4 v0, 0x0

    .line 452
    .local v0, "re":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v2, :cond_2

    .line 456
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    const-string v2, "0"

    const-string v3, "10000"

    invoke-virtual {p0, v2, v3}, Lcom/cmdm/control/logic/d;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 460
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    invoke-virtual {v2, v0, p1}, Lcom/cmdm/control/dao/a;->a(Lcom/cmdm/control/util/client/ResultUtil;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    .line 486
    :goto_0
    return-object v1

    .line 462
    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .line 463
    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v2, 0x10

    .line 464
    const-string v3, "\u67e5\u8be2\u5e38\u7528\u8054\u7cfb\u4eba\u8bbe\u7f6e\u4fe1\u606f\uff0c\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    .line 462
    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_0

    .line 469
    :cond_1
    const-string v2, "0"

    const-string v3, "10000"

    invoke-virtual {p0, v2, v3}, Lcom/cmdm/control/logic/d;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 470
    iget-object v2, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    invoke-virtual {v2, v0}, Lcom/cmdm/control/dao/a;->a(Lcom/cmdm/control/util/client/ResultUtil;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    goto :goto_0

    .line 473
    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .line 474
    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v2, 0x8

    .line 475
    const-string v3, "\u672a\u77e5\u5f02\u5e38"

    .line 473
    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_0

    .line 478
    :cond_3
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v2, 0x9

    .line 479
    const-string v3, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 478
    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_0

    .line 482
    :cond_4
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v2, 0x12

    .line 483
    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 482
    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1140
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1141
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/cmdm/control/dao/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1145
    :cond_0
    return-object v0
.end method

.method public o(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
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
    .line 987
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 988
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 992
    const-string v3, "favorite"

    .line 993
    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 994
    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    .line 995
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    .line 991
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 1009
    :goto_0
    return-object v10

    .line 997
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x8

    .line 998
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    .line 997
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1001
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 1002
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 1001
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1005
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1006
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1005
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    const/4 v13, 0x0

    .line 500
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v2, "2"

    const-string v3, "1"

    .line 504
    iget-object v6, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 505
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    .line 503
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 520
    :goto_0
    return-object v13

    .line 507
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 508
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x8

    .line 509
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 507
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 512
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x9

    .line 513
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 512
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 516
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x12

    .line 517
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 516
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1156
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1157
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/cmdm/control/dao/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1162
    :cond_0
    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    const/4 v13, 0x0

    .line 533
    .local v13, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v2, "2"

    const-string v3, "3"

    .line 537
    iget-object v6, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 538
    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object/from16 v5, p2

    .line 536
    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v13

    .line 553
    :goto_0
    return-object v13

    .line 540
    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .line 541
    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x8

    .line 542
    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    const/4 v2, 0x0

    .line 540
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 545
    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x9

    .line 546
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 545
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 549
    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v0, 0x12

    .line 550
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 549
    invoke-direct {v13, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v13    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1173
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1174
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/cmdm/control/dao/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1179
    :cond_0
    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .param p1, "settingId"    # Ljava/lang/String;

    .prologue
    .line 1243
    const/4 v9, 0x0

    .line 1244
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    .line 1247
    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    .line 1248
    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    .line 1247
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    .line 1257
    :goto_0
    return-object v9

    .line 1250
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 1251
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 1250
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1254
    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1255
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1254
    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "friendMobile"    # Ljava/lang/String;
    .param p2, "settingId"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v10, 0x0

    .line 757
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    .line 760
    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    .line 761
    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 759
    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    .line 772
    :goto_0
    return-object v10

    .line 763
    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 764
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 763
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 768
    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 769
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 768
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method
