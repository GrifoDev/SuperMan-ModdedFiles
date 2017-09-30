.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckTNCTransaction"


# instance fields
.field mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createTNCInfoForEasySignup(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;)V
    .locals 8

    const/4 v2, -0x1

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    if-eqz p1, :cond_0

    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "token"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mToken:I

    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "country_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "agreeMarketing"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mToken:I

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->createTNCInfoForEasySignup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/SsfListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Intent was null"

    const-string v1, "CheckTNCTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public getVerifyTNCForEasySignup(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;)V
    .locals 6

    const/4 v2, -0x1

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    if-eqz p1, :cond_0

    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "token"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mToken:I

    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "country_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mToken:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->getVerifyTNCForEasySignup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Intent was null"

    const-string v1, "CheckTNCTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    if-nez v0, :cond_0

    const-string v0, "Listener was null"

    const-string v1, "CheckTNCTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/VerifyTNCForEasySignupResponseVO;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/VerifyTNCForEasySignupResponseVO;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mToken:I

    iget-object v3, p2, Lcom/samsung/android/sdk/ssf/account/io/VerifyTNCForEasySignupResponseVO;->requiredTNCAccepted:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/sdk/ssf/account/io/VerifyTNCForEasySignupResponseVO;->requiredPrivacyAccepted:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/sdk/ssf/account/io/VerifyTNCForEasySignupResponseVO;->requiredMarketingAgreementAccepted:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;)V

    goto :goto_0

    :cond_1
    const-string v0, "get OK but no response"

    const-string v1, "CheckTNCTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhanceAccountVerifyTNCResponse;)V

    goto :goto_0

    :cond_2
    const-string v0, "CheckTNCTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountTNCCheckListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/CheckTNCTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method
