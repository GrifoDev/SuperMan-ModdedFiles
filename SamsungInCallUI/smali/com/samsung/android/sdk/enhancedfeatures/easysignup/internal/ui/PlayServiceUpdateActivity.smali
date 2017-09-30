.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;
.super Landroid/app/Activity;


# static fields
.field public static final RESULT_FAILED:I = 0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field private final REQUEST_CODE_RECOVER_PLAY_SERVICES:I

.field private final TAG:Ljava/lang/String;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->REQUEST_CODE_RECOVER_PLAY_SERVICES:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->notifyGCMUpdateResult(Z)V

    return-void
.end method

.method private notifyGCMUpdateResult(Z)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyGCMUpdateResult , result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_GCM:Z

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->finish()V

    return-void

    :cond_1
    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const-string v1, "Activity result ok"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->notifyGCMUpdateResult(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "User didn\'t perform action ..."

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play service status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->notifyGCMUpdateResult(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "onBackPressed"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->notifyGCMUpdateResult(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_cb_handler"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Play service status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/common/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3e7

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;)V

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/common/c;->a(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play service status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Its not userRecoverable error..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->notifyGCMUpdateResult(Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/PlayServiceUpdateActivity;->notifyGCMUpdateResult(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
