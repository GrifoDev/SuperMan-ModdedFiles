.class Lcom/yulore/sdk/ivr/service/IvrCacheService$2;
.super Ljava/lang/Object;
.source "IvrCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulore/sdk/ivr/service/IvrCacheService;->checkUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

.field final synthetic val$localVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    iput-object p2, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->val$localVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v6, "YuloreIVR"

    const-string v7, " start request data from server "

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-virtual {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/yulore/sdk/ivr/util/DeviceUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/yulore/android/common/http/RequestVo;

    invoke-direct {v3}, Lcom/yulore/android/common/http/RequestVo;-><init>()V

    const-string v6, "https://apis-samsung.dianhua.cn/vivr/checkIvrZipVer.php"

    const-string v7, "?apikey="

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/yulore/sdk/ivr/util/Constants;->API_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&version="

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->val$localVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&device_num="

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, " "

    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    const/16 v6, 0x4e20

    iput v6, v3, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    const/16 v6, 0x4e20

    iput v6, v3, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-virtual {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v3, Lcom/yulore/android/common/http/RequestVo;->context:Landroid/content/Context;

    const-string v6, "YuloreIVR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " required url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yulore/android/common/http/NetUtils;->get(Lcom/yulore/android/common/http/RequestVo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "YuloreIVR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " response form server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/yulore/sdk/ivr/parser/PkgParser;

    invoke-direct {v6}, Lcom/yulore/sdk/ivr/parser/PkgParser;-><init>()V

    invoke-virtual {v6, v4}, Lcom/yulore/sdk/ivr/parser/PkgParser;->parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v6

    iget-object v7, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v7}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$100(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v7

    const-string v8, "version"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->getVersion()I

    move-result v6

    iget-object v7, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v7}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$100(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v7

    const-string v8, "version"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-gt v6, v7, :cond_3

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$100(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v6

    const-string v7, "version"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v6

    rem-int/lit8 v6, v6, 0x7

    if-nez v6, :cond_1

    :cond_3
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6, v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$600(Lcom/yulore/sdk/ivr/service/IvrCacheService;Lcom/yulore/sdk/ivr/model/IvrPkgInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "YuloreIVR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " error msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;->this$0:Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-static {v6}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->access$500(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
