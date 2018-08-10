.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "fingerprint_gesture_quick"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-wrap0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
