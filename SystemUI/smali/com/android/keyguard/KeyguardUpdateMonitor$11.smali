.class Lcom/android/keyguard/KeyguardUpdateMonitor$11;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationAcquired: Iris is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "Iris is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap2(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap51(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    :cond_1
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationError: Iris is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardIris"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get3(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204b0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set4(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    const-string/jumbo v0, "KeyguardIris"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IRIS_ERROR_EYE_SAFETY_TIMEOUT count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisForceCancel(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap60(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationFailed: Iris is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get16(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap29(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationHelp: Iris is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardIris"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->irisAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationSucceeded: Iris is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardIris"

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap30(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onIRImage([BII)V
    .locals 0

    return-void
.end method
