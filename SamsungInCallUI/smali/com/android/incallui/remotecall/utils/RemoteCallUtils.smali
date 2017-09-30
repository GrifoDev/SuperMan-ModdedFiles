.class public Lcom/android/incallui/remotecall/utils/RemoteCallUtils;
.super Ljava/lang/Object;


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
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getTopActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getHomeActivity()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v2, "Launcher is top"

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v2, "isKeyguardLocked"

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    const-string v2, "!pm.isScreenOn()"

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needToShowMultiparty()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->isMultipartyCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getIncomingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMultiparty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPendingOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getOutgoingCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-nez v2, :cond_1

    move v1, v0

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
