.class public Lcom/android/incallui/bike/BikeModeDTMFReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BikeModeDTMFReceiver"

    const-string v1, "InCallUi: BikeModeDTMFReceiver: onReceive"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.BikeMode.UrgentKeyRecognized"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key"

    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->processDTMFResponse()V

    :cond_0
    return-void
.end method
