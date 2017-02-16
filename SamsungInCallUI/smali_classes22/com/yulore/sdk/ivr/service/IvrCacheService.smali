.class public Lcom/yulore/sdk/ivr/service/IvrCacheService;
.super Landroid/app/IntentService;
.source "IvrCacheService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    }
.end annotation


# static fields
.field private static final DELETE_JSON:Ljava/lang/String; = "delete.json"

.field private static final PROP_NAME:Ljava/lang/String; = "last_update_time"

.field private static final UPDATE_EXCEPTION:I = 0xc

.field private static final UPDATE_FAILED:I = 0xb

.field private static final UPDATE_NONEED:I = 0xd

.field private static final UPDATE_SUCCESS:I = 0xa

.field private static final UPDATE_UNKNOWN:I = 0xe

.field private static final UPDATE_ZIP_FILE:Ljava/lang/String; = "ivr.zip"

.field private static final VERSION_CODE:Ljava/lang/String; = "version"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

.field private sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

.field private updating:Z

.field private yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "IVR update service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    .line 59
    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;

    invoke-direct {v0, p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;-><init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    .line 108
    const-string v0, "YuloreIVR"

    const-string v1, " IVR update service start running "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method static synthetic access$002(Lcom/yulore/sdk/ivr/service/IvrCacheService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/android/common/util/SharedPreferencesUtility;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->unZipAndDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yulore/sdk/ivr/service/IvrCacheService;Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/service/IvrCacheService;
    .param p1, "x1"    # Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->download(Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z

    move-result v0

    return v0
.end method

.method private checkUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "localVersion"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " local Version number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;

    invoke-direct {v1, p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;-><init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    :cond_0
    return-void
.end method

.method private download(Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z
    .locals 4
    .param p1, "pkgInfo"    # Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getIncUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const-string v1, "YuloreIVR"

    const-string v2, " update part of data file "

    invoke-static {v1, v2}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    .line 217
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v1

    .line 218
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getIncUpdateUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getIncUpdateUrlSign()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-direct {p0, v1, v2, v3}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 226
    .local v0, "result":Z
    :goto_0
    return v0

    .line 220
    .end local v0    # "result":Z
    :cond_0
    const-string v1, "YuloreIVR"

    const-string v2, " update all data file "

    invoke-static {v1, v2}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    .line 222
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrlSign()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-direct {p0, v1, v2, v3}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "version"    # I
    .param p2, "updateUrl"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .prologue
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/yulore/android/common/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/yulore/android/common/download/DownloadManager;

    move-result-object v0

    .line 242
    .local v0, "downloadManager":Lcom/yulore/android/common/download/DownloadManager;
    new-instance v1, Lcom/yulore/android/common/download/DownloadManager$Request;

    invoke-direct {v1}, Lcom/yulore/android/common/download/DownloadManager$Request;-><init>()V

    .line 243
    .local v1, "request":Lcom/yulore/android/common/download/DownloadManager$Request;
    invoke-virtual {v1, p2}, Lcom/yulore/android/common/download/DownloadManager$Request;->setUrl(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;

    .line 244
    iget-object v3, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yulore/android/common/download/DownloadManager$Request;->setSaveDir(Ljava/io/File;)Lcom/yulore/android/common/download/DownloadManager$Request;

    .line 245
    const-string v3, "ivr.zip"

    invoke-virtual {v1, v3}, Lcom/yulore/android/common/download/DownloadManager$Request;->setSaveName(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;

    .line 247
    invoke-virtual {v0, v1}, Lcom/yulore/android/common/download/DownloadManager;->enqueue(Lcom/yulore/android/common/download/DownloadManager$Request;)Z

    move-result v2

    .line 248
    .local v2, "success":Z
    const-string v3, "YuloreIVR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download zip file result ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz v2, :cond_0

    .line 268
    iget-object v3, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v4, "version"

    invoke-virtual {v3, v4, p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putInt(Ljava/lang/String;I)V

    .line 270
    :cond_0
    return v2
.end method

.method private requestUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "telNum"    # Ljava/lang/String;
    .param p2, "moArea"    # Ljava/lang/String;
    .param p3, "mtArea"    # Ljava/lang/String;
    .param p4, "operator"    # I

    .prologue
    const/16 v10, 0xc

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    .end local p2    # "moArea":Ljava/lang/String;
    .end local p3    # "mtArea":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 301
    .restart local p2    # "moArea":Ljava/lang/String;
    .restart local p3    # "mtArea":Ljava/lang/String;
    :cond_1
    const-string v6, "YuloreIVR"

    const-string v7, " start to request update "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v2, Lcom/yulore/android/common/http/RequestVo;

    invoke-direct {v2}, Lcom/yulore/android/common/http/RequestVo;-><init>()V

    .line 305
    .local v2, "reqVo":Lcom/yulore/android/common/http/RequestVo;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, "https://apis-samsung.dianhua.cn/ivr/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "?apikey="

    .line 309
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/yulore/sdk/ivr/util/Constants;->API_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&tel="

    .line 310
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&format=json"

    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&moArea="

    .line 312
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p2, :cond_2

    .end local p2    # "moArea":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&mtArea="

    .line 313
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p3, :cond_3

    .end local p3    # "mtArea":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&device_num="

    .line 314
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/yulore/sdk/ivr/util/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&operator="

    .line 315
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&tel_version="

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/yulore/sdk/ivr/util/Constants;->TEL_VERSION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&pkg_version="

    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v8, "version"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    .line 319
    const/16 v6, 0x61a8

    iput v6, v2, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    .line 320
    const/16 v6, 0x4e20

    iput v6, v2, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    .line 321
    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v2, Lcom/yulore/android/common/http/RequestVo;->context:Landroid/content/Context;

    .line 323
    invoke-static {v2}, Lcom/yulore/android/common/http/NetUtils;->get(Lcom/yulore/android/common/http/RequestVo;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 327
    const-string v6, "YuloreIVR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " response form server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v6, Lcom/yulore/sdk/ivr/parser/PacketParser;

    invoke-direct {v6}, Lcom/yulore/sdk/ivr/parser/PacketParser;-><init>()V

    invoke-virtual {v6, v3}, Lcom/yulore/sdk/ivr/parser/PacketParser;->parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    move-result-object v1

    .line 330
    .local v1, "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v6

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getS_version()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 332
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 352
    .end local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .end local v3    # "response":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    const-string v6, "YuloreIVR"

    const-string v7, " to request a single data error : UnsupportedEncodingException"

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 312
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local p2    # "moArea":Ljava/lang/String;
    .restart local p3    # "mtArea":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string p2, ""

    goto/16 :goto_1

    .line 313
    .end local p2    # "moArea":Ljava/lang/String;
    :cond_3
    const-string p3, ""

    goto/16 :goto_2

    .line 334
    .end local p3    # "mtArea":Ljava/lang/String;
    .restart local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .restart local v3    # "response":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getS_version()I

    move-result v6

    if-nez v6, :cond_5

    .line 335
    const-string v6, "YuloreIVR"

    const-string v7, " update all data file "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v6, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    .line 341
    :goto_3
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v6

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v7

    .line 342
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrlSign()Ljava/lang/String;

    move-result-object v8

    .line 341
    invoke-direct {p0, v6, v7, v8}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 343
    .local v4, "result":Z
    if-eqz v4, :cond_6

    .line 344
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 356
    .end local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "result":Z
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    const-string v6, "YuloreIVR"

    const-string v7, " to request a single data error : IOException"

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_2
    const-string v6, "YuloreIVR"

    const-string v7, " update part of data file "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v6, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 360
    .end local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .end local v3    # "response":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v0

    .line 361
    .local v0, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    const-string v6, "YuloreIVR"

    const-string v7, " to request a single data error : JSONException"

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 346
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "result":Z
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    :try_start_3
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 350
    .end local v1    # "pkgInfo":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .end local v4    # "result":Z
    :cond_7
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method private unZipAndDelete(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .line 275
    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .line 276
    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v2

    .line 274
    invoke-static {v1, v2}, Lcom/yulore/sdk/ivr/util/ZipUtils;->unZipByFirstWord(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 277
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .line 279
    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yulore/android/common/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 281
    :cond_0
    return-void
.end method

.method private validateIvrData([B)Z
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 371
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    new-array v0, v6, [B

    .line 373
    .local v0, "base64Data":[B
    const/16 v2, 0xa

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x6

    if-ge v2, v6, :cond_0

    .line 374
    add-int/lit8 v6, v2, -0xa

    aget-byte v7, p1, v2

    aput-byte v7, v0, v6

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_0
    const/4 v3, 0x1

    .line 379
    .local v3, "invalid":Z
    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/RSA;->base64Decode([B)[B

    move-result-object p1

    .line 382
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 384
    .local v5, "response":Ljava/lang/String;
    const-string v6, "YuloreIVR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " validateIvrData response = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    .local v4, "jb":Lorg/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 388
    const/4 v3, 0x0

    .line 393
    .end local v4    # "jb":Lorg/json/JSONObject;
    .end local v5    # "response":Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "yulore_ivr"

    .line 114
    invoke-virtual {v0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode(I)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->create()Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    .line 115
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    .line 116
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 285
    const-string v0, "YuloreIVR"

    const-string v1, " IVR update service stop running "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v0, "YuloreIVR"

    const-string v1, " start update task "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/FileUtil;->isDirectory(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putInt(Ljava/lang/String;I)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/FileUtil;->need2Update(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->checkUpdate(Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method
