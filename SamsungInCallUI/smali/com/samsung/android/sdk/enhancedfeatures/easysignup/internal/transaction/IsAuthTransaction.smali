.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final COREAPPS_AGENT_APP_ID:Ljava/lang/String; = "3z5w443l4l"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDeviceId1:Ljava/lang/String;

.field private mDeviceId3:Ljava/lang/String;

.field private mGuid:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mImsiIndex:I

.field private mImsiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

.field private mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-string v0, "IsAuthTransaction"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId1:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId3:Ljava/lang/String;

    return-void
.end method

.method private doIsAuthNoPhoneType()V
    .locals 3

    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setImsi(Ljava/lang/String;)V

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setDevice_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setGuid(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->isAuth(Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isAuth : serverURL is missing in isAuthenticated()"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x2ee3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_0
    return-void
.end method

.method private doIsAuthPhoneType()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IsAuthState. enter. imsi is not available"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setImsi(Ljava/lang/String;)V

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setDevice_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setGuid(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->isAuth(Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isAuth : serverURL is missing in isAuthenticated()"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x2ee3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method private getFromLocalInfo(I)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;
    .locals 5

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->profile_sharing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->efsdk_enhanced_features_01_profile_sharing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->enhanced_messaging:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->efsdk_popup_features_03_messaging_sharing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->simple_sharing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->efsdk_enhanced_features_02_simple_sharing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSuccessResponse(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getDeviceTypeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ssf/SsfClient;->setDeviceId(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getTwofaAuth()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v1, v2

    if-eqz v1, :cond_4

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msisdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAppStatus()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v2, v4

    if-lez v2, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_a

    aget-object v6, v4, v3

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;->getServices()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;

    move-result-object v7

    if-eqz v7, :cond_9

    array-length v2, v7

    if-lez v2, :cond_9

    array-length v8, v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_9

    aget-object v9, v7, v2

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getStatus()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getStatus()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    :cond_5
    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getSid()I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_8

    const-string v10, "3z5w443l4l"

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;->getAppid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getSid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getSid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthInfo()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->getMoAuth()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, "MT"

    if-eqz v0, :cond_b

    const-string v2, "2FA"

    :cond_b
    :goto_4
    if-nez v0, :cond_d

    if-nez v1, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifySucces()V

    return-void

    :cond_c
    const-string v2, "MO"

    goto :goto_4

    :cond_d
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    goto :goto_5
.end method

.method private notifySucces()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Listener was null"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getServiceInfo(I)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;
    .locals 4

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->getFromLocalInfo(I)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getSDKServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;

    const-string v2, "coreapps_service_name"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "coreapps_service_icon"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->readDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceInfo;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const-string v0, "I am not able to find this service in your device."

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuth(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mGuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    if-nez v0, :cond_0

    const-string v0, "Listener was null"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "device id is not ready"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getImsiList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Don\'t have any sim..."

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x68

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->isPhoneType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->doIsAuthPhoneType()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->doIsAuthNoPhoneType()V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 5

    const/16 v4, 0x64

    const/4 v2, 0x1

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_5

    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    if-eqz v0, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got wrong token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponse: (NoPhoneType) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthStatus()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId3:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->handleSuccessResponse(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId1:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->handleSuccessResponse(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->doIsAuthPhoneType()V

    goto :goto_0

    :cond_2
    const-string v0, "Device was not authenticated."

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthInfo()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->getMoAuth()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "MT"

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "MO"

    goto :goto_1

    :cond_4
    const-string v0, "get OK but no response"

    const-string v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v1, 0x2af8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "IsAuthTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
