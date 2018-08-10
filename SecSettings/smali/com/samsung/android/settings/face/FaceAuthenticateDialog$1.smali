.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
.source "FaceAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap4(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get9(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$1;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120a92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get9(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 2

    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->resetFailedFaceNBackupAttempts()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-super {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method
