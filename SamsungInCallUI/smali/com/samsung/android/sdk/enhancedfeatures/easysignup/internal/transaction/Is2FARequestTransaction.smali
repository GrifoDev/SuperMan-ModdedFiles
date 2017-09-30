.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;


# static fields
.field public static final TOKEN_IS_2FA_REQ:I = 0x3e8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-string v0, "Is2FARequestTransaction"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public is2FAReq(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->is2FAReq(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Its seems SSF SDK error"

    const-string v1, "Is2FARequestTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/TwoFAReqInfo;

    if-eqz v0, :cond_1

    const-string v0, "Success response..."

    const-string v1, "Is2FARequestTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/TwoFAReqInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/TwoFAReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/TwoFAReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/account/io/TwoFAReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/account/io/TwoFAReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;

    aget-object v6, v1, v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;

    iget-object v2, v6, Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;->auth_code:Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;->mn:Ljava/lang/String;

    iget-wide v4, v6, Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;->request_time:J

    iget-object v6, v6, Lcom/samsung/android/sdk/ssf/account/io/Request2FInfo;->device_type_value:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FARequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;

    invoke-interface {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;->onSuccess(Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "get OK but no response"

    const-string v1, "Is2FARequestTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;

    const/16 v1, 0x2af8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_1

    :cond_2
    const-string v0, "Is2FARequestTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FARequestListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/Is2FARequestTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_1
.end method
