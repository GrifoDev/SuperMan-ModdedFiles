.class abstract Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
.super Ljava/lang/Thread;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUcmPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "new CheckUcmPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onVerifyPinResponse(III)V
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->mPin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap3(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)[I

    move-result-object v1

    const-string/jumbo v2, "KeyguardUCMPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPinReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v3, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardUCMPinView"

    const-string/jumbo v3, "Exception for verifyPIN : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v3, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin$2;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
