.class Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(JI)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-wrap0(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 4

    const-string/jumbo v1, "SemIrisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendAuthenticatedSucceeded, ir : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get1(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceededFidoResultData([B)V
    .locals 3

    const-string/jumbo v0, "SemIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAuthenticatedSucceededFidoResultData, fidoResultData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get1(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get1(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->-wrap0(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;[B)V

    :cond_0
    return-void
.end method

.method private sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method private sendErrorResult(JI)V
    .locals 3

    const-string/jumbo v0, "SemIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendErrorResult, errMsgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-wrap1(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-wrap1(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get4(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get4(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get5(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-wrap1(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendIRImage([BII)V
    .locals 3

    const-string/jumbo v0, "SemIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIRImage, width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onIRImage([BII)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onIRImage([BII)V

    :cond_1
    return-void
.end method

.method private sendRemovedResult(JII)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get4(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get5(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get5(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v0

    if-eq p3, v1, :cond_0

    const-string/jumbo v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Iris id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p4, v0, :cond_1

    const-string/jumbo v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Group id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get4(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get5(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAcquiredResult(JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceededFidoResultData([B)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedFailed()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendErrorResult(JI)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendIRImage([BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method
