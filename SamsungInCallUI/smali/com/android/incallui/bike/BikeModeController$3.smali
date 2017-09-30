.class Lcom/android/incallui/bike/BikeModeController$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/bike/BikeModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/bike/BikeModeController;


# direct methods
.method constructor <init>(Lcom/android/incallui/bike/BikeModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeController$3;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BikeModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecieve: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "why"

    const/16 v1, -0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController$3;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeController;->access$200(Lcom/android/incallui/bike/BikeModeController;)Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/bike/BikeModeAudioManager;->onScreenOffReceived(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController$3;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeController;->access$200(Lcom/android/incallui/bike/BikeModeController;)Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/bike/BikeModeAudioManager;->onHeadsetPlugReceived(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController$3;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeController;->access$200(Lcom/android/incallui/bike/BikeModeController;)Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/bike/BikeModeAudioManager;->onAudioStateChangedReceived(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.samsung.BikeMode.DrawInCallUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController$3;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-static {v0, p2}, Lcom/android/incallui/bike/BikeModeController;->access$300(Lcom/android/incallui/bike/BikeModeController;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.samsung.BikeMode.UrgentKeyRecognized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController$3;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-static {v0, p2}, Lcom/android/incallui/bike/BikeModeController;->access$400(Lcom/android/incallui/bike/BikeModeController;Landroid/content/Intent;)V

    goto :goto_0
.end method
