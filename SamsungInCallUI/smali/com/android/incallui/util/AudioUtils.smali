.class public Lcom/android/incallui/util/AudioUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/AudioUtils$CallForwardingState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioUtils"

.field public static sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->INVALID:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public static getAudioStream()I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-static {v2}, Lcom/android/incallui/util/AudioUtils;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/AudioUtils;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public static hasReceiver()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AudioUtils"

    const-string v2, "isAudioHas_Receiver context is null"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "AudioUtils"

    const-string v2, "isAudioHas_Receiver audioManager is null"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "AudioUtils"

    const-string v1, "isAudioHas_Receiver: false"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method private static isAudio(I)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallForwardingState()Z
    .locals 3

    const/4 v1, 0x1

    sget-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sget-object v2, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->INVALID:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "call_forwarding"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AudioUtils"

    const-string v2, "isCallForwardingState() SideSync true"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STARTED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sget-object v2, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STARTED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isSupported(I)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAudioMode(I)V
    .locals 3

    const-string v0, "AudioUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending new Audio Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public static setCallForwardingState(Z)V
    .locals 3

    const-string v0, "AudioUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingState() SideSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STARTED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/util/AudioUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/util/AudioUtils;->sIsCallForwardingState:Lcom/android/incallui/util/AudioUtils$CallForwardingState;

    goto :goto_0
.end method
