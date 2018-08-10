.class Lcom/android/systemui/volume/SecVolumeDialogImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_7

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get23(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : call onDismissSafeVolumeWarning() CANCEL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : call onDismissSafeVolumeWarning() OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : dismiss mLockScreenDialog()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get28(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v4, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBroadcastReceiver : ACTION_MIRROR_LINK = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mlstatus"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v4, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "com.samsung.android.bixby.intent.extra.VIEW_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_8

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : BIXBY VIEW ATTACHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set4(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v4, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string/jumbo v4, "mute"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_9

    const/4 v3, 0x1

    :goto_2
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBroadcastReceiver : AllSoundMute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap7(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mBroadcastReceiver : BIXBY VIEW DETACHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set4(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
