.class public Lcom/android/incallui/bike/BikeModeDTMFReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BikeModeDTMFReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string v2, "BikeModeDTMFReceiver"

    const-string v3, "InCallUi: BikeModeDTMFReceiver: onReceive"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "com.samsung.BikeMode.UrgentKeyRecognized"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const-string v2, "key"

    const/16 v3, 0x20

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v1

    .line 32
    .local v1, "key":C
    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    .line 33
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    .line 34
    .local v0, "controller":Lcom/android/incallui/bike/BikeModeController;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->processDTMFResponse()V

    .line 39
    .end local v0    # "controller":Lcom/android/incallui/bike/BikeModeController;
    .end local v1    # "key":C
    :cond_0
    return-void
.end method
