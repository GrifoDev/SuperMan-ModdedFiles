.class Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;
.super Landroid/os/Handler;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get5(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get5(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get2(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get2(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    move-result-object v1

    const-string/jumbo v2, "fidoResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->-wrap0(Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;[B)V

    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get2(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;)V

    :cond_1
    return-void
.end method

.method private sendErrorResult(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get5(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get1(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/biometrics/SemBiometricsManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemBiometricsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SemBiometricsManager"

    const-string/jumbo v1, "handleMessage : Unknown msg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "SemBiometricsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->sendAcquiredResult(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->sendAuthenticatedSucceeded(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->sendAuthenticatedFailed()V

    goto :goto_1

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->sendErrorResult(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
