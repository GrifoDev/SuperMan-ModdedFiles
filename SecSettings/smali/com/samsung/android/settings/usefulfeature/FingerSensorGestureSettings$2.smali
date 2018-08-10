.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;
.super Landroid/database/ContentObserver;
.source "FingerSensorGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_gesture_spay"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
