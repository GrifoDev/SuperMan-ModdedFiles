.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onDeregister"

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->disableBootReceiverComponent(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->cancel(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->cancel(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->removeAllSsfClient()V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->unregisterGcm(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient;->deregister(Landroid/content/Context;)Z

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setSppRegId(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    const-string v0, "last_heart_beat_time"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "heart_beat_interval"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "last_policy_check_time"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "policy_set_time"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "policy_check_interval"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "last_access_token_refresh_time"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "expire_account_time"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    const-string v0, "update_check_time_interval"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 13

    if-nez p3, :cond_2

    const-string v0, "msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "push_type"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPushReceive push type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnhancedAccount"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reqAuth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "reqAuthV3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Auth: model number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", auth code : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", appid : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->appid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", auth_status : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_status:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", number_conflict : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->number_conflict:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnhancedAccount"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "no push listener."

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v12

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->device_type:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->appid:Ljava/lang/String;

    iget v10, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_status:I

    iget v11, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->number_conflict:I

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onAuthRequest(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;)V

    goto :goto_1

    :cond_4
    const-string v3, "Auth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v2, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth_result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnhancedAccount"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_result:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v0, "no push listener."

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_device:Ljava/lang/String;

    iget v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->auth_result:I

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthResultPush;->device_type:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onAuthConfirm(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "succession"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->getUser(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "delete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "no push listener."

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onDeleteAuth(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel: model number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " auth code : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnhancedAccount"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v0, "no push listener."

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v9

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->mn:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iget-object v8, v0, Lcom/samsung/android/sdk/ssf/account/io/MT2FAuthReqPush;->device_type:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v9, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onCancelAuthRequest(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;)V

    goto/16 :goto_1

    :cond_c
    const-string v3, "noti"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "popup"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_d
    const-class v2, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnhancedAccount"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v0, "no push listener."

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;-><init>(Lcom/samsung/android/sdk/ssf/account/io/NoticeMessage;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;->onMessageReceived(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountNewMessage;)V

    goto/16 :goto_1
.end method

.method public onRegister()V
    .locals 2

    const-string v0, "onRegister"

    const-string v1, "EnhancedAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->enableBootReceiverComponent(Landroid/content/Context;)V

    return-void
.end method
