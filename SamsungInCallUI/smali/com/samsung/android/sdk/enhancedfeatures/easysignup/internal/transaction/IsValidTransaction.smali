.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final TAG:Ljava/lang/String; = "IsValidTransaction"


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;)V
    .locals 2

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    const/16 v1, 0xd2

    invoke-virtual {v0, p1, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->isValid(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 12

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_6

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;

    if-eqz v0, :cond_6

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getChild()[Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->getSvc()[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v6, v0

    new-instance v10, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->getServiceId()I

    move-result v11

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->getcondition()I

    move-result v9

    invoke-direct {v10, v11, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;-><init>(II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$Child;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->getDuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->getDeviceIdx()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/ChildCondition;->getDeviceTypeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v6, v8, v7, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$Child;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getSvc()[Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->getServiceId()I

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->getcondition()I

    move-result v3

    invoke-direct {v6, v7, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getEsuPkg()Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    iget-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;->appid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;->vc:Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getPkg()Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    iget-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;->appid:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;->vc:Ljava/lang/String;

    invoke-direct {v7, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getSt()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getStatusDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/IsValidResponse;->getDeviceTypeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    const-string v0, "Response was not proper..."

    const-string v1, "IsValidTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_3

    :cond_7
    const-string v0, "IsValidTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountUserListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsValidTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_3
.end method
