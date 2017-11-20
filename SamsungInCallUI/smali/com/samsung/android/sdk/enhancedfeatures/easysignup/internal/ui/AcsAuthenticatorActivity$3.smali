.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->runCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->cancelTimer()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->getRemainingTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    long-to-int v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->getRemainingTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
