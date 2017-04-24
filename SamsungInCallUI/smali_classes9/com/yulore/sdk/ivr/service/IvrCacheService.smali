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

    const-string v0, "IVR update service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;

    invoke-direct {v0, p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;-><init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const-string v0, "YuloreIVR"

    const-string v1, " IVR update service start running "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/yulore/sdk/ivr/service/IvrCacheService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/android/common/util/SharedPreferencesUtility;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->unZipAndDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yulore/sdk/ivr/service/IvrCacheService;Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->download(Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z

    move-result v0

    return v0
.end method

.method private checkUpdate(Ljava/lang/String;)V
    .locals 3

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

    iget-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->updating:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;

    invoke-direct {v1, p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;-><init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private download(Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getIncUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "YuloreIVR"

    const-string v2, " update part of data file "

    invoke-static {v1, v2}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getIncUpdateUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getIncUpdateUrlSign()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "YuloreIVR"

    const-string v2, " update all data file "

    invoke-static {v1, v2}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrlSign()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/yulore/android/common/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/yulore/android/common/download/DownloadManager;

    move-result-object v0

    new-instance v1, Lcom/yulore/android/common/download/DownloadManager$Request;

    invoke-direct {v1}, Lcom/yulore/android/common/download/DownloadManager$Request;-><init>()V

    invoke-virtual {v1, p2}, Lcom/yulore/android/common/download/DownloadManager$Request;->setUrl(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yulore/android/common/download/DownloadManager$Request;->setSaveDir(Ljava/io/File;)Lcom/yulore/android/common/download/DownloadManager$Request;

    const-string v3, "ivr.zip"

    invoke-virtual {v1, v3}, Lcom/yulore/android/common/download/DownloadManager$Request;->setSaveName(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;

    invoke-virtual {v0, v1}, Lcom/yulore/android/common/download/DownloadManager;->enqueue(Lcom/yulore/android/common/download/DownloadManager$Request;)Z

    move-result v2

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

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v4, "version"

    invoke-virtual {v3, v4, p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putInt(Ljava/lang/String;I)V

    :cond_0
    return v2
.end method

.method private requestUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const/16 v10, 0xc

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "YuloreIVR"

    const-string v7, " start to request update "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/yulore/android/common/http/RequestVo;

    invoke-direct {v2}, Lcom/yulore/android/common/http/RequestVo;-><init>()V

    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "https://apis-samsung.dianhua.cn/ivr/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "?apikey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/yulore/sdk/ivr/util/Constants;->API_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&tel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&format=json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&moArea="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&mtArea="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p3, :cond_3

    :goto_2
    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&device_num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/yulore/sdk/ivr/util/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&operator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&tel_version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lcom/yulore/sdk/ivr/util/Constants;->TEL_VERSION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&pkg_version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v8, "version"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    const/16 v6, 0x61a8

    iput v6, v2, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    const/16 v6, 0x4e20

    iput v6, v2, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v2, Lcom/yulore/android/common/http/RequestVo;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/yulore/android/common/http/NetUtils;->get(Lcom/yulore/android/common/http/RequestVo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

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

    new-instance v6, Lcom/yulore/sdk/ivr/parser/PacketParser;

    invoke-direct {v6}, Lcom/yulore/sdk/ivr/parser/PacketParser;-><init>()V

    invoke-virtual {v6, v3}, Lcom/yulore/sdk/ivr/parser/PacketParser;->parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v6

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getS_version()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v6, "YuloreIVR"

    const-string v7, " to request a single data error : UnsupportedEncodingException"

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string p2, ""

    goto/16 :goto_1

    :cond_3
    const-string p3, ""

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getS_version()I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "YuloreIVR"

    const-string v7, " update all data file "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    :goto_3
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v6

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getUpdateUrlSign()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->downloadPkg(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v6, "YuloreIVR"

    const-string v7, " to request a single data error : IOException"

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    const-string v6, "YuloreIVR"

    const-string v7, " update part of data file "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    iput-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mType:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v6, "YuloreIVR"

    const-string v7, " to request a single data error : JSONException"

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

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

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yulore/sdk/ivr/util/ZipUtils;->unZipByFirstWord(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yulore/android/common/util/FileUtils;->delete(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private validateIvrData([B)Z
    .locals 9

    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    new-array v0, v6, [B

    const/16 v2, 0xa

    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x6

    if-ge v2, v6, :cond_0

    add-int/lit8 v6, v2, -0xa

    aget-byte v7, p1, v2

    aput-byte v7, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/RSA;->base64Decode([B)[B

    move-result-object p1

    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

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

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "yulore_ivr"

    invoke-virtual {v0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode(I)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->create()Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const-string v0, "YuloreIVR"

    const-string v1, " IVR update service stop running "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "YuloreIVR"

    const-string v1, " start update task "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->yuloreIVREngine:Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getIvrFileDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/FileUtil;->isDirectory(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/FileUtil;->need2Update(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->sp:Lcom/yulore/android/common/util/SharedPreferencesUtility;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->checkUpdate(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
