.class public Lcom/android/incallui/util/VideoCallAppLogging;
.super Ljava/lang/Object;
.source "VideoCallAppLogging.java"


# static fields
.field private static sIsFullScreen:Z

.field private static sRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/android/incallui/util/VideoCallAppLogging;->sIsFullScreen:Z

    .line 58
    sput v0, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanViewEnter(Z)V
    .locals 2
    .param p0, "isFullScreen"    # Z

    .prologue
    const/4 v0, 0x0

    .line 511
    if-eqz p0, :cond_0

    .line 512
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090350

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    sput-boolean p0, Lcom/android/incallui/util/VideoCallAppLogging;->sIsFullScreen:Z

    .line 517
    return-void

    .line 514
    :cond_0
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090351

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clickSpeaker(Lcom/android/incallui/Call;I)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "mode"    # I

    .prologue
    const/16 v5, 0x8

    .line 160
    if-nez p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 162
    .local v1, "callState":I
    const/4 v3, 0x0

    .line 164
    .local v3, "screenId":Ljava/lang/String;
    if-ne p1, v5, :cond_4

    const v4, 0x7f0903e7

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "featureId":Ljava/lang/String;
    :goto_1
    if-ne p1, v5, :cond_5

    const-string v0, "Speaker off"

    .line 167
    .local v0, "appLoggingExtra":Ljava/lang/String;
    :goto_2
    const/16 v4, 0xd

    if-eq v1, v4, :cond_2

    const/4 v4, 0x6

    if-ne v1, v4, :cond_6

    .line 168
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OVIB"

    invoke-static {v4, v5, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const v4, 0x7f0903ca

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_3
    :goto_3
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 180
    invoke-static {v3, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "appLoggingExtra":Ljava/lang/String;
    .end local v2    # "featureId":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0903e8

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 165
    .restart local v2    # "featureId":Ljava/lang/String;
    :cond_5
    const-string v0, "Speaker on"

    goto :goto_2

    .line 172
    .restart local v0    # "appLoggingExtra":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    if-ne v1, v5, :cond_3

    .line 173
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "DVIC"

    invoke-static {v4, v5, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const v4, 0x7f090371

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static duringCallCdma_camera(Z)V
    .locals 3
    .param p0, "isOn"    # Z

    .prologue
    .line 416
    if-eqz p0, :cond_0

    .line 417
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Twoway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_1

    const v0, 0x7f090349

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void

    .line 420
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Oneway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_1
    const v0, 0x7f0903c2

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCallCdma_hideMe(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 445
    if-nez p0, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    .line 447
    .local v0, "isModifying":Z
    const/4 v1, 0x0

    .line 449
    .local v1, "screenId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 450
    const v2, 0x7f0903fd

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVIC"

    const-string v4, "Oneway video call"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    if-eqz v1, :cond_0

    .line 458
    const v2, 0x7f090384

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_2
    const v2, 0x7f0903fe

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static duringCallCdma_showMe(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 427
    if-nez p0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    .line 429
    .local v0, "isModifying":Z
    const/4 v1, 0x0

    .line 431
    .local v1, "screenId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 432
    const v2, 0x7f0903fd

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVIC"

    const-string v4, "Twoway video call"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    if-eqz v1, :cond_0

    .line 440
    const v2, 0x7f0903e1

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_2
    const v2, 0x7f0903fe

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static duringCallCdma_voice(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 463
    if-nez p0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    .line 465
    .local v0, "isModifying":Z
    const/4 v1, 0x0

    .line 467
    .local v1, "screenId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 468
    const v2, 0x7f0903fd

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVIC"

    const-string v4, "Voice call"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-eqz v1, :cond_0

    .line 476
    const v2, 0x7f090402

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_2
    const v2, 0x7f0903fe

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static duringCallMenu_OutgoingImageImage()V
    .locals 2

    .prologue
    .line 386
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public static duringCallMenu_OutgoingImageVideo()V
    .locals 2

    .prologue
    .line 390
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c9

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public static duringCallMenu_bluetoothOff(I)V
    .locals 3
    .param p0, "callState"    # I

    .prologue
    .line 370
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 371
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Bluetooth off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_1
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090341

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static duringCallMenu_bluetoothOn(I)V
    .locals 4
    .param p0, "callState"    # I

    .prologue
    .line 358
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMSH"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 363
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Bluetooth on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090342

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public static duringCallMenu_captureImage()V
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMCI"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09034d

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static duringCallMenu_hideMe()V
    .locals 4

    .prologue
    .line 277
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMHS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Hide me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a6

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static duringCallMenu_hold(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    const v3, 0x7f090375

    .line 265
    if-eqz p0, :cond_0

    .line 266
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Hold"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090386

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Resume"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090385

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static duringCallMenu_keypad(IZ)V
    .locals 5
    .param p0, "callState"    # I
    .param p1, "isVisible"    # Z

    .prologue
    const v4, 0x7f090371

    .line 394
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMKP"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 400
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OVIB"

    if-nez p1, :cond_2

    const-string v0, "Keypad show"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_1
    :goto_1
    if-eqz p1, :cond_6

    .line 410
    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09038f

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_2
    return-void

    .line 400
    :cond_2
    const-string v0, "Keypad hide"

    goto :goto_0

    .line 403
    :cond_3
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 404
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

    .line 412
    :cond_6
    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09038e

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static duringCallMenu_more()V
    .locals 2

    .prologue
    .line 378
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903b9

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public static duringCallMenu_outGoingImagePreset()V
    .locals 2

    .prologue
    .line 382
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c8

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public static duringCallMenu_outgoingImage(I)V
    .locals 4
    .param p0, "callState"    # I

    .prologue
    .line 293
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMOI"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 298
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Outgoing image"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    :goto_0
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c6

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 301
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

    .prologue
    .line 326
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Record off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903d2

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public static duringCallMenu_recordOn()V
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMRV"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Record on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903d3

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static duringCallMenu_showMe()V
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Show me"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public static duringCallMenu_speaker(I)V
    .locals 3
    .param p0, "callState"    # I

    .prologue
    .line 332
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 333
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Speaker on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1
    :goto_0
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e8

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 335
    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 336
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
    .param p0, "callState"    # I

    .prologue
    .line 343
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VMLS"

    const-string v3, "VMSP"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OVIB"

    const-string v2, "Speaker off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1
    :goto_0
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 350
    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 351
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

    .prologue
    .line 87
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Add call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090336

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static duringCall_mute(Z)V
    .locals 3
    .param p0, "isMute"    # Z

    .prologue
    .line 149
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VIMU"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DVIC"

    if-eqz p0, :cond_0

    const-string v0, "Mute on"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_1

    const v0, 0x7f0903bf

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 152
    :cond_0
    const-string v0, "Mute off"

    goto :goto_0

    .line 156
    :cond_1
    const v0, 0x7f0903be

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static duringCall_voiceCallDowngrade()V
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIC"

    const-string v2, "Voice call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const v0, 0x7f090371

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090403

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static endCall_contactAddTo()V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVCO"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "View contact"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const v0, 0x7f090379

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090356

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static endCall_contactView()V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "ECCO"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "Add to contact"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const v0, 0x7f090379

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090357

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static end_call(I)V
    .locals 2
    .param p0, "callState"    # I

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 577
    .local v0, "screenId":Ljava/lang/String;
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    .line 578
    :cond_0
    const v1, 0x7f0903ca

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 584
    const v1, 0x7f090376

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_2
    return-void

    .line 579
    :cond_3
    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    .line 580
    :cond_4
    const v1, 0x7f090371

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenIdForCleanMode(I)Ljava/lang/String;
    .locals 6
    .param p0, "screenType"    # I

    .prologue
    .line 597
    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "screenId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 599
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 600
    sget-boolean v3, Lcom/android/incallui/util/VideoCallAppLogging;->sIsFullScreen:Z

    if-eqz v3, :cond_0

    .line 601
    const v3, 0x7f090371

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "duringVideoCallId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 604
    const v3, 0x7f090373

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 611
    .end local v1    # "duringVideoCallId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 606
    .restart local v1    # "duringVideoCallId":Ljava/lang/String;
    :cond_1
    const v3, 0x7f090374

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 65
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideMe(I)V
    .locals 4
    .param p0, "callState"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "screenId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VICH"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 198
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IVIB"

    const-string v3, "Hide me"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const v1, 0x7f09038c

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 208
    const v1, 0x7f0903a6

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    return-void

    .line 201
    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    .line 202
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OVIB"

    const-string v3, "Hide me"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const v1, 0x7f0903ca

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static incomingCall_answerVideo()V
    .locals 3

    .prologue
    const v2, 0x7f09038c

    .line 78
    const-string v0, "IVIA"

    const-string v1, "Answer video"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033c

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033b

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static incomingCall_answerVoice()V
    .locals 3

    .prologue
    const v2, 0x7f09038c

    .line 69
    const-string v0, "IVIA"

    const-string v1, "Answer voice"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033e

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033d

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCoverClosed(Z)V
    .locals 2
    .param p0, "isCoverClosed"    # Z

    .prologue
    .line 589
    if-eqz p0, :cond_0

    .line 590
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090352

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :goto_0
    return-void

    .line 592
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

    const v1, 0x7f0903c3

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static modify_accept(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 521
    if-nez p0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    .line 523
    .local v1, "isModifying":Z
    const/4 v2, 0x0

    .line 524
    .local v2, "screenId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 526
    .local v0, "featureId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 527
    const v3, 0x7f0903fd

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    const v3, 0x7f090334

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    const v3, 0x7f0903fe

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 531
    const v3, 0x7f0903ff

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static modify_change_to_oneway_video()V
    .locals 2

    .prologue
    .line 567
    const v0, 0x7f0903fd

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09034e

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static modify_change_to_video()V
    .locals 2

    .prologue
    .line 563
    const v0, 0x7f0903fd

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09034f

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public static modify_decline(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 540
    if-nez p0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    .line 542
    .local v1, "isModifying":Z
    const/4 v2, 0x0

    .line 543
    .local v2, "screenId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 545
    .local v0, "featureId":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 546
    const v3, 0x7f0903fd

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    const v3, 0x7f090365

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    const v3, 0x7f090402

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 553
    :cond_4
    const v3, 0x7f0903fe

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    const v3, 0x7f09034b

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static modify_stay_on_voice()V
    .locals 2

    .prologue
    .line 571
    const v0, 0x7f0903fd

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903ea

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public static movePip()V
    .locals 2

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903ba

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public static multipartyCall_dropParticipant()V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Drop"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const v0, 0x7f0903bb

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09036f

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static multipartyCall_manageConference(Z)V
    .locals 4
    .param p0, "isHide"    # Z

    .prologue
    const v3, 0x7f0903bb

    .line 253
    if-eqz p0, :cond_0

    .line 254
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Hide"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Manage"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a2

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static multipartyCall_mergeCall()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Merge"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const v0, 0x7f0903bb

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a8

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static multipartyCall_swapCall()V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVIM"

    const-string v2, "Swap"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const v0, 0x7f0903bb

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903f7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static orientationMode(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 481
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getScreenIdForCleanMode(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "screenId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 484
    .local v0, "detail":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 485
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 487
    .local v1, "rotation":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 488
    :cond_0
    const-string v0, "Landscape"

    .line 495
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget v3, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    if-eq v3, v1, :cond_1

    .line 496
    const v3, 0x7f0903c4

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_1
    sput v1, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    .line 500
    .end local v1    # "rotation":I
    :cond_2
    return-void

    .line 489
    .restart local v1    # "rotation":I
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 490
    const-string v0, "Upsidedown"

    goto :goto_0

    .line 492
    :cond_4
    const-string v0, "Portrait"

    goto :goto_0
.end method

.method public static resetRotationValue()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/util/VideoCallAppLogging;->sRotation:I

    .line 504
    return-void
.end method

.method public static showMe(I)V
    .locals 4
    .param p0, "callState"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "screenId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VICS"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 220
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IVIB"

    const-string v3, "Show me"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const v1, 0x7f09038c

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 230
    const v1, 0x7f0903a7

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    return-void

    .line 223
    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    .line 224
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OVIB"

    const-string v3, "Show me"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const v1, 0x7f0903ca

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static switchCamera(Lcom/android/incallui/Call;)V
    .locals 7
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 115
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 117
    .local v0, "callState":I
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraId()I

    move-result v1

    .line 119
    .local v1, "cameraId":I
    const/4 v3, 0x0

    .line 120
    .local v3, "screenId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 121
    .local v2, "featureId":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 122
    const v4, 0x7f0903fa

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.incallui"

    const-string v6, "VISC"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/16 v4, 0xd

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    .line 132
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OVIB"

    const-string v6, "Switch"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v4, 0x7f0903ca

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 144
    invoke-static {v3, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_5
    if-nez v1, :cond_2

    .line 124
    const v4, 0x7f0903fb

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 135
    :cond_6
    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/16 v4, 0x8

    if-ne v0, v4, :cond_8

    .line 136
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "DVIC"

    const-string v6, "Switch"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const v4, 0x7f090371

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 139
    :cond_8
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 140
    const v4, 0x7f09038c

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
