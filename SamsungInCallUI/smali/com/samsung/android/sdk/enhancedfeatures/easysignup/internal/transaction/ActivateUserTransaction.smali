.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivateUserTransaction"


# instance fields
.field private mDeactiveUser:Z

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mDeactiveUser:Z

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mDeactiveUser:Z

    if-eqz v0, :cond_1

    const-string v0, "Deactive user ... "

    const-string v1, "ActivateUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;->onSuccess()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "Active user ... "

    const-string v1, "ActivateUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "get OK but no response"

    const-string v1, "ActivateUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_1

    :cond_3
    const-string v0, "ActivateUserTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_1
.end method

.method public setDeactiveUser(ZLcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeactiveUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivateUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountActivateUserListener;

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/ActivateUserTransaction;->mDeactiveUser:Z

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;->setDeactivateUser(ZILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method
