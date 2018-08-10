.class Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricRetryView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    iget v3, v3, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconDrawable(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v4}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->isBiometricRetryIconSelected(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    iget-object v3, v3, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    iget-object v3, v3, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    const-string/jumbo v3, "102"

    const-string/jumbo v4, "1013"

    const-string/jumbo v5, "4"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v6

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    const-string/jumbo v3, "102"

    const-string/jumbo v4, "1013"

    const-string/jumbo v5, "3"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    const-string/jumbo v3, "102"

    const-string/jumbo v4, "1013"

    const-string/jumbo v5, "5"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
