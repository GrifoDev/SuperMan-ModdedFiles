.class public Lcom/android/incallui/util/VideoCallAppLogging;
.super Ljava/lang/Object;


# static fields
.field private static sIsFullScreen:Z

.field private static sRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/VideoCallAppLogging;->sIsFullScreen:Z

    sput v0, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanViewEnter(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903fa

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sput-boolean p0, Lcom/android/incallui/util/VideoCallAppLogging;->sIsFullScreen:Z

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903fb

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clickSpeaker(Lcom/android/incallui/Call;I)V
    .locals 6

    const/16 v5, 0x8

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v0, 0x0

    if-ne p1, v5, :cond_4

    const v1, 0x7f0904ad

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-ne p1, v5, :cond_5

    const-string v1, "Speaker off"

    :goto_2
    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "OVIB"

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090486

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f0904ae

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_5
    const-string v1, "Speaker on"

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    if-ne v3, v5, :cond_3

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "DVIC"

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static duringCallCdma_camera(Z)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Twoway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_1

    const v0, 0x7f0903f3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Oneway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09047e

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCallCdma_hideMe(Lcom/android/incallui/Call;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    const-string v3, "Oneway video call"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const v1, 0x7f090435

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0904c4

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCallCdma_showMe(Lcom/android/incallui/Call;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    const-string v3, "Twoway video call"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const v1, 0x7f0904a7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0904c4

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCallCdma_voice(Lcom/android/incallui/Call;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    const-string v3, "Voice call"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const v1, 0x7f0904c8

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0904c4

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCallMenu_OutgoingImageImage()V
    .locals 2

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090483

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_OutgoingImageVideo()V
    .locals 2

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090485

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_bluetoothOff(I)V
    .locals 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Bluetooth off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903ea

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_bluetoothOn(I)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMSH"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Bluetooth on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903eb

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_captureImage()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMCI"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903f7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_hideMe()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMHS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Hide me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090461

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_hold(Z)V
    .locals 4

    const v3, 0x7f090423

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Hold"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090437

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Resume"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090436

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static duringCallMenu_keypad(IZ)V
    .locals 5

    const v4, 0x7f09041f

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMKP"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OVIB"

    if-nez p1, :cond_2

    const-string v0, "Keypad show"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_6

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090449

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    const-string v0, "Keypad hide"

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    if-nez p1, :cond_5

    const-string v0, "Keypad show"

    :goto_3
    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "Keypad hide"

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090448

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static duringCallMenu_more()V
    .locals 2

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090474

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_outGoingImagePreset()V
    .locals 2

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090484

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_outgoingImage(I)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMOI"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Outgoing image"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090482

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Outgoing image"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static duringCallMenu_recordOff()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Record off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090491

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_recordOn()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMRV"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Record on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090492

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_showMe()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Show me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090462

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCallMenu_speaker(I)V
    .locals 3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Speaker on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904ae

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Speaker on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static duringCallMenu_speakerOff(I)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMSP"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Speaker off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904ad

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Speaker off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static duringCall_addCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Add call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903dd

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static duringCall_mute(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VIMU"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    if-eqz p0, :cond_0

    const-string v0, "Mute on"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_1

    const v0, 0x7f09047b

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Mute off"

    goto :goto_0

    :cond_1
    const v0, 0x7f09047a

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCall_voiceCallDowngrade()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Voice call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904c9

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static endCall_contactAddTo()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVCO"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "View contact"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090428

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090404

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static endCall_contactView()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "ECCO"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "Add to contact"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090428

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090405

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static end_call(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    :cond_0
    const v0, 0x7f090486

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f090425

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_4
    const v0, 0x7f09041f

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenIdForCleanMode(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/android/incallui/util/VideoCallAppLogging;->sIsFullScreen:Z

    if-eqz v2, :cond_0

    const v2, 0x7f09041f

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090421

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7f090422

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideMe(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VICH"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IVIB"

    const-string v2, "Hide me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09043e

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f090461

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Hide me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090486

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static incomingCall_answerVideo()V
    .locals 3

    const v2, 0x7f09043e

    const-string v0, "IVIA"

    const-string v1, "Answer video"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e5

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e4

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static incomingCall_answerVoice()V
    .locals 3

    const v2, 0x7f09043e

    const-string v0, "IVIA"

    const-string v1, "Answer voice"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e6

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCoverClosed(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903fe

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09047f

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static modify_accept(Lcom/android/incallui/Call;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0903d9

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0904c4

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0904c5

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static modify_change_to_oneway_video()V
    .locals 2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903f8

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static modify_change_to_video()V
    .locals 2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903f9

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static modify_decline(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    const v1, 0x7f0904c3

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f090413

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0904c8

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v0, 0x7f0904c4

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0903f5

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static modify_stay_on_voice()V
    .locals 2

    const v0, 0x7f0904c3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904b0

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static movePip()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090476

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static multipartyCall_dropParticipant()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Drop"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090477

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09041d

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static multipartyCall_manageConference(Z)V
    .locals 4

    const v3, 0x7f090477

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Hide"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09045b

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Manage"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09045c

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static multipartyCall_mergeCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Merge"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090477

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090463

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static multipartyCall_swapCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Swap"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090477

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904bd

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static orientationMode(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    :cond_0
    const-string v0, "Landscape"

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget v3, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    if-eq v3, v2, :cond_1

    const v3, 0x7f090480

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sput v2, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    const-string v0, "Upsidedown"

    goto :goto_0

    :cond_4
    const-string v0, "Portrait"

    goto :goto_0
.end method

.method public static resetRotationValue()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    return-void
.end method

.method public static showMe(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VICS"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IVIB"

    const-string v2, "Show me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f09043e

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f090462

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Show me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090486

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static switchCamera(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call$VideoSettings;->getCameraId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const v0, 0x7f0904c0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const-string v5, "VISC"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OVIB"

    const-string v3, "Switch"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f090486

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_8

    const v0, 0x7f0904c1

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    const-string v3, "Switch"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f09041f

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const v1, 0x7f09043e

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method
