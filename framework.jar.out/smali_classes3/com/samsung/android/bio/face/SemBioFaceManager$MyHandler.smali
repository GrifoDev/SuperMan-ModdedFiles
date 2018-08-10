.class Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;
.super Landroid/os/Handler;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendAuthenticatedFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get3(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;)V

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceededFidoResultData([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get3(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get3(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->-wrap0(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V

    :cond_0
    return-void
.end method

.method private sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_1
    return-void
.end method

.method private sendErrorResult(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-set0(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    goto :goto_0
.end method

.method private sendRemovedResult(JII)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFace;->getGroupId()I

    move-result v1

    if-eq p3, v0, :cond_0

    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Face id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p4, v1, :cond_1

    const-string/jumbo v2, "SemBioFaceManager"

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

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-set0(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string/jumbo v0, "SemBioFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

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

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "handleMessage : Unknown msg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/bio/face/SemBioFace;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendAcquiredResult(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendAuthenticatedSucceededFidoResultData([B)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/bio/face/SemBioFace;

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendAuthenticatedFailed()V

    goto :goto_0

    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendErrorResult(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
