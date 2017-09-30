.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth failed. ErrorState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$IDeviceRegChangedListener;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "device listener was null"

    const-string v1, "AuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "extra_auth_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_msisdn"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "extra_is_mo_support"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOSupport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$IDeviceRegChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$IDeviceRegChangedListener;->onDeviceRegCompleted(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)V

    goto :goto_0

    :cond_3
    const-string v1, "extra_auth_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_error_code"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
