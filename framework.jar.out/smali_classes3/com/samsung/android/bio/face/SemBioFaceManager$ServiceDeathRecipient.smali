.class Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field mAlreadyLinked:Z

.field mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get5(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-set1(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;

    return-void
.end method

.method link()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServiceDeathRecipient : link failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method unlink()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServiceDeathRecipient : unlink failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    :cond_0
    return-void
.end method
