.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->information:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->check_your_network_status:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
