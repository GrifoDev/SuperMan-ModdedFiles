.class public Lcom/cmdm/control/logic/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field static final cm:Ljava/lang/String; = "com.cmdm.polychrome.ui"

.field private static cn:Lcom/cmdm/control/util/file/FileReadWrite;


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private ci:Lcom/cmdm/control/dao/i;

.field cj:Lcom/cmdm/control/bean/CaiXiangSetting;

.field ck:Ljava/lang/String;

.field cl:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "CaiYinSDK"

    sput-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    sput-object v0, Lcom/cmdm/control/logic/k;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 66
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    .line 70
    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 74
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    .line 75
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    .line 76
    const-string v0, "com.cmdm.polychrome.ui"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/cmdm/control/dao/i;->aS()Lcom/cmdm/control/dao/i;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 82
    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    .line 84
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    .line 93
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic bC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Object;

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v1, "str_content":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    :try_start_0
    sget-object v2, Lcom/cmdm/control/logic/k;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v2, p1, v1}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "passwrodOrImsi"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v10, 0x0

    .line 211
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "mode":I
    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 215
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 216
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const/4 v9, 0x5

    .line 219
    .end local v1    # "mode":I
    .local v9, "mode":I
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 221
    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p3

    .line 219
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    move v1, v9

    .line 236
    .end local v9    # "mode":I
    .restart local v1    # "mode":I
    :goto_0
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 239
    const-string v4, "1"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p3

    .line 238
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v1    # "mode":I
    :cond_0
    :goto_1
    return-object v10

    .line 222
    .restart local v1    # "mode":I
    :cond_1
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const/4 v9, 0x6

    .line 224
    .end local v1    # "mode":I
    .restart local v9    # "mode":I
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v3, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 226
    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    .line 224
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    move v1, v9

    .end local v9    # "mode":I
    .restart local v1    # "mode":I
    goto :goto_0

    .line 228
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x14

    .line 229
    const-string v2, "\u767b\u5f55\u6a21\u5f0f\u4e0d\u5bf9"

    .line 228
    invoke-direct {v10, v0, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 232
    :cond_3
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x15

    .line 233
    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u4e3a\u7a7a"

    .line 232
    invoke-direct {v10, v0, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 242
    .end local v1    # "mode":I
    :cond_4
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 243
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 242
    invoke-direct {v10, v0, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "f_clientId"    # Ljava/lang/String;
    .param p3, "f_clientKey"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v7, 0x0

    .line 256
    .local v7, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    .line 258
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 259
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 260
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 262
    const-string v4, "1"

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 261
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v7

    .line 263
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/cmdm/control/logic/b;

    .line 266
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 265
    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, "cybsl":Lcom/cmdm/control/logic/b;
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    const-string v4, "1"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v0    # "cybsl":Lcom/cmdm/control/logic/b;
    :cond_0
    :goto_0
    return-object v7

    .line 271
    :cond_1
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x17

    .line 272
    const-string v2, "\u5ba2\u6237\u7aefid\u4e3a\u7a7a\u6216\u8005\u5ba2\u6237\u7aef\u7684key\u4e3a\u7a7a\u6216\u8005\u7528\u6237\u624b\u673a\u53f7\u4e3a\u7a7a"

    .line 271
    invoke-direct {v7, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 276
    :cond_2
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 277
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 276
    invoke-direct {v7, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v8, 0x0

    .line 293
    .local v8, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v3, "1"

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 297
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 296
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    .line 298
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 301
    const-string v4, "1"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    .line 300
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-object v8

    .line 307
    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 308
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 307
    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "contentCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MediaResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    const/4 v8, 0x0

    .line 490
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 493
    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 494
    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 493
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 502
    :goto_0
    return-object v8

    .line 499
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    const/16 v0, 0x12

    .line 500
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 499
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 13
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 1176
    const/4 v12, 0x0

    .line 1177
    .local v12, "token_result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    const/4 v10, 0x0

    .line 1178
    .local v10, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 1181
    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 1182
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 1181
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v12

    .line 1183
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tokenMsisdn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token success"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v12}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/UserTokenInfo;

    .line 1186
    .local v9, "mUserTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    if-eqz v9, :cond_0

    .line 1187
    invoke-virtual {v9}, Lcom/cmdm/control/bean/UserTokenInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-virtual {v9}, Lcom/cmdm/control/bean/UserTokenInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    invoke-virtual {v9}, Lcom/cmdm/control/bean/UserTokenInfo;->getAcessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {v9}, Lcom/cmdm/control/bean/UserTokenInfo;->getAcessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tokenMsisdn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    const-string v1, "token success\uff0csave info"

    .line 1191
    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 1194
    invoke-virtual {v9}, Lcom/cmdm/control/bean/UserTokenInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-virtual {v9}, Lcom/cmdm/control/bean/UserTokenInfo;->getAcessToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 1196
    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 1193
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x1

    .line 1198
    const-string v1, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u6210\u529f"

    .line 1197
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tokenMsisdn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    const-string v1, "token success\uff0csave info two"

    .line 1199
    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 1221
    .end local v9    # "mUserTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v10

    .line 1202
    .restart local v9    # "mUserTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tokenMsisdn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token\u8ba4\u8bc1\u6210\u529f\uff0c\u83b7\u53d6\u76f8\u5e94\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x0

    .line 1204
    const-string v1, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u5931\u8d25,\u9274\u6743\u4e4b\u540e\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    .line 1203
    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v10, v11

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1207
    .end local v9    # "mUserTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tokenMsisdn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token fail\uff0cunkonw"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x0

    const-string v1, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u5931\u8d25,\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v10, v11

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 1210
    :catch_0
    move-exception v8

    .line 1211
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tokenMsisdn():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token fail\uff0cunkonw "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u5931\u8d25,\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 1217
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x12

    .line 1218
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1217
    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 1210
    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v9    # "mUserTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v10    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "greeting"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1345
    :try_start_0
    iget-object v7, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1346
    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    .line 1347
    iget-object v7, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1346
    invoke-direct {v6, v7}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1348
    .local v6, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1350
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const-string v3, "missdn=? and cid=? and greeting=? and show_method=? and uid=?"

    .line 1351
    .local v3, "select":Ljava/lang/String;
    const-string v2, ""

    .line 1352
    .local v2, "greet":Ljava/lang/String;
    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1353
    const/4 v7, 0x5

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    .line 1354
    aput-object p2, v4, v7

    const/4 v7, 0x2

    aput-object v2, v4, v7

    const/4 v7, 0x3

    const-string v8, "1"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v8}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 1356
    .local v4, "selectStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v0, v3, v4, v7}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1357
    .local v5, "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1358
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1366
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "greet":Ljava/lang/String;
    .end local v3    # "select":Ljava/lang/String;
    .end local v4    # "selectStrings":[Ljava/lang/String;
    .end local v5    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :goto_0
    return-object v7

    .line 1360
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v2    # "greet":Ljava/lang/String;
    .restart local v3    # "select":Ljava/lang/String;
    .restart local v4    # "selectStrings":[Ljava/lang/String;
    .restart local v5    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1363
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "greet":Ljava/lang/String;
    .end local v3    # "select":Ljava/lang/String;
    .end local v4    # "selectStrings":[Ljava/lang/String;
    .end local v5    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :catch_0
    move-exception v1

    .line 1364
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1366
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "f_clientId"    # Ljava/lang/String;
    .param p3, "f_clientKey"    # Ljava/lang/String;

    .prologue
    .line 1636
    const/4 v9, 0x0

    .line 1637
    .local v9, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1638
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    .line 1639
    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 1640
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    .line 1641
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1642
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 1643
    const-string v4, "1"

    .line 1644
    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1646
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasActivitionAppNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1643
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v10

    .line 1647
    .local v10, "result1":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1648
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 1649
    new-instance v0, Lcom/cmdm/control/logic/b;

    .line 1650
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1649
    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 1651
    .local v0, "cybsl":Lcom/cmdm/control/logic/b;
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    const-string v4, "1"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    .line 1654
    .local v8, "obj":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    if-eqz v8, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1656
    invoke-virtual {v8}, Lcom/cmdm/control/bean/GetUserParaInfoResult;->loadFzProvince()Z

    move-result v2

    .line 1655
    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->saveHasFZSF(Landroid/content/Context;Z)V

    .line 1657
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1658
    iget-object v2, v8, Lcom/cmdm/control/bean/GetUserParaInfoResult;->isOpenTxt:Ljava/lang/String;

    .line 1657
    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->saveTextTrim(Landroid/content/Context;Ljava/lang/String;)V

    .line 1659
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1660
    iget-object v2, v8, Lcom/cmdm/control/bean/GetUserParaInfoResult;->isTxtProvince:Ljava/lang/String;

    .line 1659
    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->saveTryText(Landroid/content/Context;Ljava/lang/String;)V

    .line 1661
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1662
    invoke-virtual {v8}, Lcom/cmdm/control/bean/GetUserParaInfoResult;->loadTextMode()Z

    move-result v2

    .line 1661
    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setTextSwitch(Landroid/content/Context;Z)V

    .line 1664
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .line 1665
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v2, 0x1

    .line 1666
    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1667
    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1668
    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1664
    :goto_0
    invoke-direct {v9, v2, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .line 1688
    .end local v0    # "cybsl":Lcom/cmdm/control/logic/b;
    .end local v8    # "obj":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    .end local v10    # "result1":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    return-object v9

    .line 1669
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v0    # "cybsl":Lcom/cmdm/control/logic/b;
    .restart local v8    # "obj":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    .restart local v10    # "result1":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :cond_1
    const-string v1, "\u767b\u5f55\u6210\u529f"

    goto :goto_0

    .line 1672
    .end local v0    # "cybsl":Lcom/cmdm/control/logic/b;
    .end local v8    # "obj":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .line 1673
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v2, 0x0

    .line 1674
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1675
    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1676
    invoke-virtual {v10}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1672
    :goto_2
    invoke-direct {v9, v2, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1

    .line 1677
    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_3
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_2

    .line 1680
    .end local v10    # "result1":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_4
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x17

    .line 1681
    const-string v2, "\u5ba2\u6237\u7aefid\u4e3a\u7a7a\u6216\u8005\u5ba2\u6237\u7aef\u7684key\u4e3a\u7a7a\u6216\u8005\u7528\u6237\u624b\u673a\u53f7\u4e3a\u7a7a"

    .line 1680
    invoke-direct {v9, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1

    .line 1685
    :cond_5
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v1, 0x12

    .line 1686
    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1685
    invoke-direct {v9, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public R(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    const/4 v7, 0x0

    .line 449
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 451
    iget v3, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 450
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 457
    :goto_0
    return-object v7

    .line 453
    :cond_0
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    const/16 v0, 0x16

    .line 454
    const-string v1, "\u5ba2\u6237\u7aefid\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    .line 453
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    goto :goto_0
.end method

.method public S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MsisdnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    const/4 v8, 0x0

    .line 515
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 516
    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 515
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 520
    :goto_0
    return-object v8

    .line 517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "quDaoHao"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BaseInfoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    const/4 v9, 0x0

    .line 1248
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    .line 1251
    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 1252
    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v8, p1

    .line 1250
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1260
    :goto_0
    return-object v9

    .line 1256
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    const/16 v0, 0x12

    .line 1257
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1256
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    goto :goto_0

    .line 1253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public U(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    const/4 v8, 0x0

    .line 470
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v2, ""

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 472
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 471
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    .line 478
    :goto_0
    return-object v8

    .line 474
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    const/16 v0, 0x13

    .line 475
    const-string v1, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    .line 474
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    goto :goto_0
.end method

.method public V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 5
    .param p1, "missdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    sget-object v2, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateMode=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 549
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    if-eqz p1, :cond_2

    .line 551
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 552
    const-string v2, "\u672a\u77e5\u53f7\u7801"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 553
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/network/c;->h(Landroid/content/Context;)Lcom/cmdm/control/network/b;

    move-result-object v2

    sget-object v3, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    invoke-virtual {v2, v3}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cmdm/control/logic/k;->aH(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 569
    :goto_0
    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CRSInfo;

    .line 570
    .local v0, "mCRSInfo":Lcom/cmdm/control/bean/CRSInfo;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cmdm/control/logic/k$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/cmdm/control/logic/k$2;-><init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/bean/CRSInfo;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 691
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 710
    .end local v0    # "mCRSInfo":Lcom/cmdm/control/bean/CRSInfo;
    :goto_1
    invoke-virtual {p0}, Lcom/cmdm/control/logic/k;->bA()V

    .line 711
    return-object v1

    .line 694
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 701
    :catch_0
    move-exception v2

    goto :goto_1

    .line 707
    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    const/4 v2, 0x0

    .line 708
    const-string v3, "\u8bf7\u8f93\u5165\u6b63\u786e\u53f7\u7801\u6216\u5207\u6362\u7f51\u7edc\u7c7b\u578b"

    const/4 v4, 0x0

    .line 707
    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    goto :goto_1

    .line 566
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public W(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 4
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 1378
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 1379
    .local v0, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    invoke-virtual {p0, p1}, Lcom/cmdm/control/logic/k;->aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    .line 1380
    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1382
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 1386
    .end local v0    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .local v1, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :goto_0
    return-object v1

    .line 1385
    .end local v1    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .restart local v0    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/k;->ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    move-object v1, v0

    .line 1386
    .end local v0    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .restart local v1    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    goto :goto_0
.end method

.method public X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 12
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 961
    new-instance v4, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    .line 962
    .local v4, "mCaiYinShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    iget-object v9, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 964
    :try_start_0
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    .line 965
    new-instance v8, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;

    .line 966
    iget-object v9, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 965
    invoke-direct {v8, v9}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 967
    .local v8, "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v8}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 969
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " uid=? and missdn=? and settingStartTime <= ? and settingEndTime >= ? and ((settingWeek like \'%"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentWeekOfDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 972
    const-string v10, "%\' and dateType=?) or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 973
    const-string v10, "(settingStartDate<=? and settingEndDate>=? and dateType=?) )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 969
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 974
    .local v6, "select":Ljava/lang/String;
    const/16 v9, 0x8

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v10}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    .line 975
    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    .line 976
    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x4

    .line 977
    const-string v10, "0"

    aput-object v10, v7, v9

    const/4 v9, 0x5

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentDate()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x6

    .line 978
    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentDate()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x7

    const-string v10, "1"

    aput-object v10, v7, v9

    .line 979
    .local v7, "selectStrings":[Ljava/lang/String;
    const-string v5, " priority desc "

    .line 981
    .local v5, "orderBy":Ljava/lang/String;
    invoke-virtual {v1, v6, v7, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 982
    .local v3, "mCaiYinShowingListObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    if-eqz v3, :cond_0

    .line 983
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 984
    sget-object v9, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mCaiYinShowingListObject.size()=="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 986
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 984
    invoke-static {v9, v10}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-object v4, v0

    .line 997
    .end local v1    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v3    # "mCaiYinShowingListObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "select":Ljava/lang/String;
    .end local v7    # "selectStrings":[Ljava/lang/String;
    .end local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    :goto_0
    return-object v4

    .line 989
    .restart local v1    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .restart local v3    # "mCaiYinShowingListObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "select":Ljava/lang/String;
    .restart local v7    # "selectStrings":[Ljava/lang/String;
    .restart local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    :cond_0
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 991
    .end local v1    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v3    # "mCaiYinShowingListObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "select":Ljava/lang/String;
    .end local v7    # "selectStrings":[Ljava/lang/String;
    .end local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    :catch_0
    move-exception v2

    .line 992
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 995
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 3
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    if-eqz p1, :cond_1

    .line 726
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 727
    const-string v1, "\u672a\u77e5\u53f7\u7801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->h(Landroid/content/Context;)Lcom/cmdm/control/network/b;

    move-result-object v1

    sget-object v2, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    invoke-virtual {v1, v2}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v0    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v1, 0x1

    const-string v2, "\u6b63\u5728\u66f4\u65b0\u589e\u5f3a\u5c4f\u663e\u4e2d..."

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .line 732
    .restart local v0    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cmdm/control/logic/k$3;

    invoke-direct {v2, p0, p1}, Lcom/cmdm/control/logic/k$3;-><init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 888
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 892
    :goto_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/k;->bA()V

    .line 893
    return-object v0

    .line 890
    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v0    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v1, 0x0

    const-string v2, "\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u65b0\u66f4\u65b0!"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v0    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public Z(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1523
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmdm/control/logic/k$5;

    invoke-direct {v1, p0, p1}, Lcom/cmdm/control/logic/k$5;-><init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1553
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1554
    return-void
.end method

.method public a(Lcom/cmdm/control/bean/CRSInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "mCRSInfo"    # Lcom/cmdm/control/bean/CRSInfo;
    .param p2, "missdn"    # Ljava/lang/String;

    .prologue
    .line 1272
    if-eqz p1, :cond_0

    .line 1273
    :try_start_0
    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1274
    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1275
    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getCid()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getGreeting()Ljava/lang/String;

    move-result-object v5

    .line 1275
    invoke-virtual {p0, p2, v4, v5}, Lcom/cmdm/control/logic/k;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1277
    invoke-virtual {p0, p2}, Lcom/cmdm/control/logic/k;->delete(Ljava/lang/String;)V

    .line 1278
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    .line 1279
    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1278
    invoke-direct {v3, v4}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1280
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1282
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    new-instance v2, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 1283
    .local v2, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getGreeting()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v4

    .line 1287
    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getPosterUrl()Ljava/lang/String;

    move-result-object v4

    .line 1286
    invoke-virtual {v2, v4}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v2, p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 1289
    const-string v4, "1"

    invoke-virtual {v2, v4}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 1290
    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v0, v2}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1292
    .local v1, "isTrue":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1293
    sget-object v4, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    .line 1294
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6302\u65ad\u540e\u65b0\u589e\u4e00\u6761\u8bbe\u7f6e\u4fe1\u606furl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1293
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "isTrue":Ljava/lang/Boolean;
    .end local v2    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :cond_0
    :goto_0
    return-void

    .line 1299
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "phoneIMSI"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 531
    const-string v1, "1065843199"

    .line 532
    .local v1, "phoneNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "01#"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentUTC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "onlyFlag":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 534
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    new-instance v6, Landroid/content/Intent;

    const-string v5, "SMS_SEND_ACTIOIN"

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v6, "itSend":Landroid/content/Intent;
    invoke-static {p2, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, "mPI":Landroid/app/PendingIntent;
    move-object v5, v2

    .line 536
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 537
    sget-object v2, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u77ed\u4fe1\u767b\u5f55\uff1a"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public aF(Ljava/lang/String;)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "packageName"

    invoke-direct {p0, v0, p1}, Lcom/cmdm/control/logic/k;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u6210\u529f\u5f00\u59cb\u521d\u59cb\u5316\u5305\u540d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public aG(Ljava/lang/String;)V
    .locals 7
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 904
    :try_start_0
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 905
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;

    .line 906
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 905
    invoke-direct {v3, v5}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 907
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 909
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 910
    iget-object v6, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 911
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, " missdn=? and uid=?"

    invoke-virtual {v0, v5, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 913
    .local v2, "isSuccessed":I
    if-lez v2, :cond_1

    .line 914
    sget-object v5, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v6, "\u5206\u65f6\u6bb5\u6302\u65ad\u540e\u5220\u9664\u65e7\u7684\u6210\u529f"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v2    # "isSuccessed":I
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 916
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .restart local v2    # "isSuccessed":I
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v6, "\u5206\u65f6\u6bb5\u6302\u65ad\u540e\u6570\u636e\u5e93\u4e2d\u6ca1\u6709\u8bbe\u7f6e\u4fe1\u606f\u6216\u5220\u9664\u5931\u8d25"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v2    # "isSuccessed":I
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public aH(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 11
    .param p1, "missdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1008
    const/4 v9, 0x0

    .line 1010
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1018
    :goto_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    :try_start_1
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    .line 1023
    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 1024
    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 1022
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1057
    :goto_1
    return-object v9

    .line 1027
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1037
    :goto_2
    :try_start_3
    new-instance v10, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x9

    .line 1038
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    .line 1037
    invoke-direct {v10, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    .local v10, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    move-object v9, v10

    .end local v10    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    goto :goto_1

    .line 1044
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1053
    :goto_3
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    const/16 v0, 0x12

    .line 1054
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    .line 1053
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    goto :goto_1

    .line 1050
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1040
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1034
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1015
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public aI(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "missdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DisplayResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    const/4 v9, 0x0

    .line 1129
    .local v9, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    .line 1133
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 1134
    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    .line 1133
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1143
    :goto_0
    return-object v9

    .line 1139
    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    const/16 v0, 0x12

    .line 1140
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1139
    invoke-direct {v9, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v9    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 18
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 1398
    new-instance v5, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v5}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 1399
    .local v5, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1401
    :try_start_0
    new-instance v15, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 1401
    invoke-direct/range {v15 .. v16}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1403
    .local v15, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v15}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1405
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const-string v6, " autoid desc"

    .line 1406
    .local v6, "orderby":Ljava/lang/String;
    const-string v7, "missdn=? and show_method=? and uid=?"

    .line 1407
    .local v7, "select":Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v9, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v16

    const/16 v16, 0x1

    .line 1408
    const-string v17, "1"

    aput-object v17, v9, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v16

    .line 1410
    .local v9, "selectStrings":[Ljava/lang/String;
    invoke-virtual {v1, v7, v9, v6}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1411
    .local v11, "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 1415
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-object v5, v0

    .line 1458
    .end local v1    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v6    # "orderby":Ljava/lang/String;
    .end local v7    # "select":Ljava/lang/String;
    .end local v9    # "selectStrings":[Ljava/lang/String;
    .end local v11    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v15    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :cond_0
    :goto_0
    return-object v5

    .line 1418
    .restart local v1    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v6    # "orderby":Ljava/lang/String;
    .restart local v7    # "select":Ljava/lang/String;
    .restart local v9    # "selectStrings":[Ljava/lang/String;
    .restart local v11    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v15    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :cond_1
    new-instance v14, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 1418
    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1420
    .local v14, "sincestrategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v13, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v13, v14}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1424
    .local v13, "sincedbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v13, v7, v9, v6}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1425
    .local v12, "showSinceListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v12, :cond_2

    .line 1426
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_2

    .line 1430
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-object v5, v0

    goto :goto_0

    .line 1435
    :cond_2
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v8, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    .line 1436
    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v16

    const/16 v16, 0x1

    const-string v17, "2"

    aput-object v17, v8, v16

    const/16 v16, 0x2

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v16

    .line 1438
    .local v8, "selectString":[Ljava/lang/String;
    new-instance v4, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 1438
    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1440
    .local v4, "groupstrategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1444
    .local v3, "groupdbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v3, v7, v8, v6}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1445
    .local v10, "showGroupListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v10, :cond_0

    .line 1446
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 1450
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1454
    .end local v1    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "groupdbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v4    # "groupstrategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    .end local v6    # "orderby":Ljava/lang/String;
    .end local v7    # "select":Ljava/lang/String;
    .end local v8    # "selectString":[Ljava/lang/String;
    .end local v9    # "selectStrings":[Ljava/lang/String;
    .end local v10    # "showGroupListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v11    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v12    # "showSinceListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v13    # "sincedbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v14    # "sincestrategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v15    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :catch_0
    move-exception v2

    .line 1455
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public as()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "desstring":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/cmdm/control/logic/k;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    .end local v0    # "desstring":Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0    # "desstring":Ljava/lang/String;
    :cond_0
    const-string v0, "com.cmdm.polychrome.ui"

    goto :goto_1

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public at()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    .prologue
    .line 320
    const/4 v8, 0x0

    .line 322
    .local v8, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, ""

    .line 325
    const-string v4, "0"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 324
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v0, 0x1

    const-string v1, "\u6ce8\u9500\u6210\u529f"

    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .line 336
    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v8

    .line 328
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v0, 0x9

    .line 329
    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    .line 328
    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 332
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v7

    .line 333
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v0, 0x0

    const-string v1, "\u6ce8\u9500\u5931\u8d25"

    invoke-direct {v8, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public au()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aw()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RegionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1510
    const/4 v7, 0x0

    .line 1511
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 1512
    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 1511
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->f(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 1513
    return-object v7
.end method

.method public ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 18

    .prologue
    .line 1465
    new-instance v5, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v5}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 1466
    .local v5, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1468
    :try_start_0
    new-instance v12, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    .line 1469
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1468
    invoke-direct {v12, v13}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1470
    .local v12, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v12}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1473
    .local v3, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const-string v7, " show_method=? and uid=?"

    .line 1474
    .local v7, "select":Ljava/lang/String;
    const-string v6, " autoid desc"

    .line 1475
    .local v6, "orderby":Ljava/lang/String;
    const/4 v13, 0x2

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "3"

    aput-object v14, v8, v13

    const/4 v13, 0x1

    .line 1476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v14}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    .line 1478
    .local v8, "selectCurrentStrings":[Ljava/lang/String;
    invoke-virtual {v3, v7, v8, v6}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1479
    .local v10, "showCurrentListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v10, :cond_0

    .line 1480
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 1481
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-object v5, v0

    .line 1501
    .end local v3    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v6    # "orderby":Ljava/lang/String;
    .end local v7    # "select":Ljava/lang/String;
    .end local v8    # "selectCurrentStrings":[Ljava/lang/String;
    .end local v10    # "showCurrentListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v12    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :goto_0
    return-object v5

    .line 1483
    .restart local v3    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v6    # "orderby":Ljava/lang/String;
    .restart local v7    # "select":Ljava/lang/String;
    .restart local v8    # "selectCurrentStrings":[Ljava/lang/String;
    .restart local v10    # "showCurrentListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v12    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :cond_0
    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "4"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    .line 1484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v14}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v13

    .line 1486
    .local v9, "selectStrings":[Ljava/lang/String;
    invoke-virtual {v3, v7, v9, v6}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1487
    .local v11, "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 1488
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v2, v14

    .line 1489
    .local v2, "a":I
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-object v5, v0

    goto :goto_0

    .line 1492
    .end local v2    # "a":I
    :cond_1
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v13

    .line 1491
    invoke-virtual {v5, v13}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1495
    .end local v3    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v6    # "orderby":Ljava/lang/String;
    .end local v7    # "select":Ljava/lang/String;
    .end local v8    # "selectCurrentStrings":[Ljava/lang/String;
    .end local v9    # "selectStrings":[Ljava/lang/String;
    .end local v10    # "showCurrentListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v11    # "showListinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v12    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :catch_0
    move-exception v4

    .line 1496
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1499
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method bA()V
    .locals 4

    .prologue
    .line 1083
    :try_start_0
    new-instance v1, Lcom/cmdm/control/download/b;

    invoke-direct {v1}, Lcom/cmdm/control/download/b;-><init>()V

    .line 1084
    .local v1, "task":Lcom/cmdm/control/download/b;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cmdm/control/logic/k$4;

    invoke-direct {v3, p0, v1}, Lcom/cmdm/control/logic/k$4;-><init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/download/b;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1114
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v1    # "task":Lcom/cmdm/control/download/b;
    :goto_0
    return-void

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bB()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CommercialTrialProvinceResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1150
    const/4 v8, 0x0

    .line 1151
    .local v8, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    .line 1155
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    .line 1156
    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 1154
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1165
    :goto_0
    return-object v8

    .line 1161
    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1162
    .end local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1161
    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v8    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    goto :goto_0

    .line 1157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bz()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DefaultCRSInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    const/4 v7, 0x0

    .line 1067
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    .line 1069
    iget v3, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 1068
    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 1074
    :goto_0
    return-object v7

    .line 1071
    :cond_0
    new-instance v7, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    const/16 v0, 0x12

    .line 1072
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1071
    invoke-direct {v7, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 7
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 1311
    :try_start_0
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1312
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    .line 1313
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1312
    invoke-direct {v3, v5}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1314
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1316
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 1317
    iget-object v6, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1319
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, " missdn=? and show_method=? and uid=?"

    .line 1318
    invoke-virtual {v0, v5, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1320
    .local v2, "isSuccessed":I
    if-lez v2, :cond_1

    .line 1321
    sget-object v5, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v6, "\u6302\u65ad\u540e\u5220\u9664\u65e7\u7684\u6210\u529f"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "isSuccessed":I
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1323
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v2    # "isSuccessed":I
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v6, "\u6302\u65ad\u540e\u6570\u636e\u5e93\u4e2d\u6ca1\u6709\u8bbe\u7f6e\u4fe1\u606f\u6216\u5220\u9664\u5931\u8d25"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1326
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "isSuccessed":I
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1327
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    .line 356
    invoke-static/range {p1 .. p1}, Lcom/cmdm/control/util/BitmapUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 357
    .local v20, "phoneIMSI":Ljava/lang/String;
    const/4 v15, 0x0

    .line 359
    .local v15, "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    if-eqz v20, :cond_7

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 361
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cmdm/control/logic/k;->S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v21

    .line 362
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/MsisdnInfo;

    .line 364
    .local v19, "mMsisdnInfo":Lcom/cmdm/control/bean/MsisdnInfo;
    if-eqz v19, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 366
    new-instance v4, Lcom/cmdm/control/logic/b;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    .line 367
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/cmdm/control/bean/MsisdnInfo;->msisdn:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/cmdm/control/bean/MsisdnInfo;->acessToken:Ljava/lang/String;

    .line 368
    const-string v8, "1"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 366
    invoke-virtual/range {v4 .. v10}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x1

    const-string v5, "\u767b\u5f55\u6210\u529f"

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v18, "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v15, v18

    .line 436
    .end local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v19    # "mMsisdnInfo":Lcom/cmdm/control/bean/MsisdnInfo;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    .restart local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v15

    .line 374
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/logic/k;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    :goto_1
    const-wide/16 v4, 0x1388

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 386
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 388
    .local v22, "start":Ljava/lang/Long;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cmdm/control/logic/k;->S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v21

    .line 389
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    :cond_2
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 407
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/MsisdnInfo;

    .line 408
    .restart local v19    # "mMsisdnInfo":Lcom/cmdm/control/bean/MsisdnInfo;
    if-eqz v19, :cond_3

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 410
    new-instance v4, Lcom/cmdm/control/logic/b;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 411
    const/4 v5, 0x2

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/cmdm/control/bean/MsisdnInfo;->msisdn:Ljava/lang/String;

    .line 412
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/cmdm/control/bean/MsisdnInfo;->acessToken:Ljava/lang/String;

    const-string v8, "1"

    .line 413
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 411
    invoke-virtual/range {v4 .. v10}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_3
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x1

    .line 416
    const-string v5, "\u767b\u5f55\u6210\u529f"

    .line 415
    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v15, v18

    .end local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 375
    .end local v19    # "mMsisdnInfo":Lcom/cmdm/control/bean/MsisdnInfo;
    .end local v22    # "start":Ljava/lang/Long;
    :catch_0
    move-exception v11

    .line 377
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 430
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :catch_1
    move-exception v4

    goto :goto_0

    .line 382
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :catch_2
    move-exception v14

    .line 384
    .local v14, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 392
    .end local v14    # "e1":Ljava/lang/InterruptedException;
    .restart local v22    # "start":Ljava/lang/Long;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 393
    .local v16, "end":J
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v16, v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 394
    .local v12, "diff":J
    const-wide/16 v4, 0x19

    cmp-long v4, v12, v4

    if-gez v4, :cond_2

    .line 398
    const-wide/16 v4, 0x1388

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 399
    :catch_3
    move-exception v11

    .line 401
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 418
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "diff":J
    .end local v16    # "end":J
    :cond_5
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 419
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 420
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    .line 421
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v5

    .line 420
    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v15, v18

    .end local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 423
    :cond_6
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    .line 424
    const-string v5, "\u767b\u5f55\u5931\u8d25"

    .line 423
    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v15, v18

    .end local v18    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 434
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    .end local v22    # "start":Ljava/lang/Long;
    :cond_7
    new-instance v15, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    const-string v5, "\u767b\u5f55\u5931\u8d25,\u6ca1\u6709SIM\u5361"

    invoke-direct {v15, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v15    # "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 4
    .param p1, "appType"    # I

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/app/a;->a(Landroid/content/Context;)Lcom/cmdm/control/app/a;

    .line 123
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->saveAppType(I)V

    .line 124
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cmdm/control/logic/k$1;

    invoke-direct {v3, p0}, Lcom/cmdm/control/logic/k$1;-><init>(Lcom/cmdm/control/logic/k;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 130
    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/util/client/Setting;->setVersion(Landroid/content/Context;)V

    .line 131
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v2, 0x1

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v1

    .line 132
    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x0

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 1231
    const/4 v6, 0x0

    .line 1232
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v2, p0, Lcom/cmdm/control/logic/k;->bY:I

    .line 1235
    iget-object v3, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    .line 1234
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/dao/i;->a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1243
    :goto_0
    return-object v6

    .line 1239
    :cond_0
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/16 v0, 0x12

    .line 1240
    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v2, 0x0

    .line 1239
    invoke-direct {v6, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 1236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public r(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BuddySettingsCRS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1558
    .local p1, "mBuddySettingsCRSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BuddySettingsCRS;>;"
    if-eqz p1, :cond_0

    .line 1559
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1560
    new-instance v8, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    .line 1561
    iget-object v9, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 1560
    invoke-direct {v8, v9}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1562
    .local v8, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v8}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1564
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_1

    .line 1632
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "i":I
    .end local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :cond_0
    :goto_1
    return-void

    .line 1565
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v2    # "i":I
    .restart local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1567
    :try_start_1
    new-instance v6, Lcom/cmdm/control/download/b;

    invoke-direct {v6}, Lcom/cmdm/control/download/b;-><init>()V

    .line 1571
    .local v6, "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v9

    .line 1572
    invoke-virtual {v9}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v9

    .line 1570
    invoke-virtual {v6, v9}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 1575
    .local v3, "isDownFinish":Ljava/lang/Boolean;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v9

    .line 1576
    invoke-virtual {v9}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v9

    .line 1574
    invoke-virtual {v6, v9}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 1577
    .local v4, "isDownPosterFinish":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1578
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1579
    iget-object v9, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1580
    iget-object v9, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1581
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1582
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getBuddyMsisdn()Ljava/lang/String;

    move-result-object v10

    .line 1583
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1584
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getContentId()Ljava/lang/String;

    move-result-object v11

    .line 1585
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1586
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getGreeting()Ljava/lang/String;

    move-result-object v9

    .line 1581
    invoke-virtual {p0, v10, v11, v9}, Lcom/cmdm/control/logic/k;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1587
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1588
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getBuddyMsisdn()Ljava/lang/String;

    move-result-object v9

    .line 1587
    invoke-virtual {p0, v9}, Lcom/cmdm/control/logic/k;->delete(Ljava/lang/String;)V

    .line 1589
    new-instance v7, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v7}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 1591
    .local v7, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1592
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getContentId()Ljava/lang/String;

    move-result-object v9

    .line 1591
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1595
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v9

    .line 1594
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1598
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getGreeting()Ljava/lang/String;

    move-result-object v9

    .line 1597
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getSetDate()Ljava/lang/String;

    move-result-object v9

    .line 1600
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setSetDate(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v9

    .line 1605
    invoke-virtual {v9}, Lcom/cmdm/control/bean/CRSProfile;->getExpire()Ljava/lang/String;

    move-result-object v9

    .line 1603
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGuoQiDate(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    .line 1608
    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getBuddyMsisdn()Ljava/lang/String;

    move-result-object v9

    .line 1607
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v9}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v9

    .line 1612
    invoke-virtual {v9}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v9

    .line 1610
    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 1613
    const-string v9, "1"

    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 1614
    iget-object v9, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v0, v7}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1617
    .local v5, "isTrue":Ljava/lang/Boolean;
    sget-object v9, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u65b0\u589e\u4e00\u6761\u8bbe\u7f6e\u4fe1\u606f"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1564
    .end local v3    # "isDownFinish":Ljava/lang/Boolean;
    .end local v4    # "isDownPosterFinish":Ljava/lang/Boolean;
    .end local v5    # "isTrue":Ljava/lang/Boolean;
    .end local v6    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v7    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1620
    :catch_0
    move-exception v1

    .line 1622
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1628
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method public w(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiYinShowingObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "mCaiYinShowingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 951
    :goto_1
    return-void

    .line 935
    :cond_0
    new-instance v4, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;

    .line 936
    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    .line 935
    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 937
    .local v4, "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 940
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/CaiYinShowingObject;

    .line 939
    invoke-virtual {v0, v5}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    .line 941
    .local v3, "isSuccessed":Z
    if-eqz v3, :cond_1

    .line 942
    sget-object v5, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v6, "\u5206\u65f6\u6bb5\u6302\u65ad\u540e\u65b0\u589e\u7684\u6210\u529f"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    :cond_1
    sget-object v5, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v6, "\u5206\u65f6\u6bb5\u6302\u65ad\u65b0\u589e\u5931\u8d25"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 947
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v3    # "isSuccessed":Z
    .end local v4    # "strategy":Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
    :catch_0
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
