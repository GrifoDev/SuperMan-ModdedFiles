.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningBroadCastReciever;
.super Landroid/content/BroadcastReceiver;
.source "NearbyScanningBroadCastReciever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string/jumbo v5, "NearbyScanningBroadCastReciever"

    if-nez p2, :cond_1

    const-string/jumbo v4, "intent is null"

    :goto_0
    invoke-static {v5, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v4, "context is null"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "NearbyScanningBroadCastReciever"

    const-string/jumbo v6, "AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v3

    const-string/jumbo v5, "NearbyScanningBroadCastReciever"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "settingsValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/Util;->getAirPlaneModeStatus(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_4

    if-ne v3, v4, :cond_3

    invoke-static {p1, v8}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ne v3, v8, :cond_3

    invoke-static {p1, v4}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v4, "com.samsung.android.beaconmanager"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "NearbyScanningBroadCastReciever"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_PACKAGE_ADDED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.beaconmanager"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/nearbyscan/Util;->sendInstallBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_3

    const-string/jumbo v4, "com.samsung.android.easysetup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "NearbyScanningBroadCastReciever"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_PACKAGE_ADDED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.easysetup"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/nearbyscan/Util;->sendInstallBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "com.samsung.android.settings.NEARBY_DEVICE_SCANNING_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "enable"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    invoke-static {p1, v4}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method
