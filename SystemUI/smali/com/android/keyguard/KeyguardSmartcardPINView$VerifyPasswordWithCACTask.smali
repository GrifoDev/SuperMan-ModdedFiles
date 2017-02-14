.class Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordWithCACTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field errorMsgId:I

.field password:Ljava/lang/String;

.field status:Z

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x1

    const/4 v3, -0x1

    const-string/jumbo v1, "com.sec.smartcard.manager:com.samsung.ucs.agent.baiMobile"

    const-string/jumbo v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "failed to get UCS service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    :try_start_0
    const-string/jumbo v7, ""

    invoke-static {v1, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v7, v6, p1, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v9

    :cond_1
    const-string/jumbo v7, "state"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v7, 0x83

    if-ne v4, v7, :cond_3

    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/16 v7, 0x84

    if-ne v4, v7, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v7, 0x85

    if-ne v4, v7, :cond_5

    const/4 v3, 0x2

    goto :goto_0

    :cond_5
    const/16 v7, 0x86

    if-ne v4, v7, :cond_6

    const/4 v3, 0x4

    goto :goto_0

    :cond_6
    const/16 v7, 0x87

    if-ne v4, v7, :cond_2

    const/16 v3, 0x8

    goto :goto_0

    :catch_0
    move-exception v2

    return v9
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "doInBackground():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->verifyPIN(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VerifyPIN(withUCS-BM): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnPostExecute():VerifyPasswordWithCACTask result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iput v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_internalerror:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get1()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VerifyPasswordWithCACTask mCurrent == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_locked:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_expired:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_connectionerror:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_wrong_card:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-wrap0(Lcom/android/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OnPreExecute():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-set0(Lcom/android/keyguard/KeyguardSmartcardPINView;Z)Z

    return-void
.end method
