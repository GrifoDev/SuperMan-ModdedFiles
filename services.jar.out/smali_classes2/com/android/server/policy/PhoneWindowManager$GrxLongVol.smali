.class public Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GrxLongVol"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "com.spotify.mobile.android.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x18

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    const-string v1, "com.spotify.mobile.android.ui.widget.NEXT"

    if-eq v0, v2, :cond_0

    const-string v1, "com.spotify.mobile.android.ui.widget.PREVIOUS"

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$GrxSiguiente;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mGrxEsLongVol:Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void

    :cond_1
    const/16 v1, 0x18

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGrxTeclaVol:I

    const/16 v2, 0x57

    if-eq v0, v1, :cond_2

    const/16 v2, 0x58

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$GrxLongVol;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->grx_sendMediaButtonEvent(I)V

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    const-string v1, ""

    goto :goto_0
.end method
