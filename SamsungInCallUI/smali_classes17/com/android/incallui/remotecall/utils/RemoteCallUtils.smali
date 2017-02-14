.class public Lcom/android/incallui/remotecall/utils/RemoteCallUtils;
.super Ljava/lang/Object;
.source "RemoteCallUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteCallUtils"

    sput-object v0, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needToShowAsFullScreen()Z
    .locals 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getTopActivity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.launcher2.Launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.launcher2.LauncherApplication"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sget-object v4, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v5, "Launcher is top"

    invoke-static {v4, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v5, "isKeyguardLocked"

    invoke-static {v4, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v5, "!pm.isScreenOn()"

    invoke-static {v4, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static needToShowMultiparty()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->isMultipartyCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getIncomingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMultiparty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPendingOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static updateRemoteCallUI()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateRemoteCallUI"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getRemoteCallAdapterList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
