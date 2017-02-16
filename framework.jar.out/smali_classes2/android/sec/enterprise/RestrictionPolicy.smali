.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final ACTION_RESTRICTION_DISABLE_WFD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESTRICTION_DISABLE_WFD_INTERNAL"

.field public static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final LOCKSCREEN_MULTIPLE_WIDGET_VIEW:I = 0x1

.field public static final LOCKSCREEN_SHORTCUTS_VIEW:I = 0x2

.field public static final SVOICE_PACKAGE1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final SVOICE_PACKAGE2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field private static TAG:Ljava/lang/String;

.field public static final settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-string/jumbo v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 64
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "com.android.settings.ActivityPicker"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.AppWidgetPickActivity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "com.android.settings.widget.SettingsAppWidgetProvider"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "com.android.settings.ChooseLockAdditionalPin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "com.android.settings.ChooseLockFaceWarning"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "com.android.settings.ChooseLockGeneric"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "com.android.settings.ChooseLockMotion"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "com.android.settings.ChooseLockPassword"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "com.android.settings.ChooseLockPattern"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "com.android.settings.ConfirmLockPassword"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "com.android.settings.ConfirmLockPattern"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "com.android.settings.DeviceAdminAdd"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "com.android.settings.bluetooth.DevicePickerActivity"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "com.android.settings.wfd.WfdPickerActivity"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "com.android.settings.bluetooth.BluetoothPairingDialog"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "com.android.settings.bluetooth.BluetoothEnableActivity"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintLockSettings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "com.android.settings.fingerprint.RegisterFingerprint"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "com.android.settings.KnoxSetLockFingerprintPassword"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "com.android.settings.KnoxChooseLockFingerprintPassword"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "com.android.settings.notification.RedactionInterstitial"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "com.android.settings.KnoxFingerprintNotice"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 64
    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAndroidBeamAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 429
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 430
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAndroidBeamAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 433
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 436
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isAudioRecordAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 304
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 305
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAudioRecordAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 307
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 310
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .locals 3

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 353
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 354
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBackgroundProcessLimitAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 356
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 359
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isBackupAllowed(Z)Z
    .locals 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 254
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 255
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 258
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isBackupAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isCameraEnabled(Z)Z
    .locals 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 140
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 143
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isCameraEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isClipboardAllowed(Z)Z
    .locals 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 197
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 198
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 200
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isClipboardAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isClipboardShareAllowed()Z
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 384
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 385
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardShareAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 387
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 390
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 4

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 235
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleCrashReportAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 238
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isGoogleCrashReportAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .locals 3

    .prologue
    .line 368
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 369
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isKillingActivitiesOnLeaveAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 372
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 375
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 218
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 221
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 224
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isNFCEnabled()Z
    .locals 4

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 157
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 160
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .locals 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 176
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabledWithMsg(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 180
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isNonMarketAppAllowed()Z
    .locals 4

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 119
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 122
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isNonMarketAppAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 287
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 288
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPowerOffAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 291
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isPowerOffAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isSBeamAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 415
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 416
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSBeamAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 418
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 421
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isSVoiceAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 400
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 401
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSVoiceAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 403
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 406
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 272
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenCaptureEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 275
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 278
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 102
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 105
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isSettingsChangesAllowed returning true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isVideoRecordAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 318
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 319
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 320
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isVideoRecordAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 322
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 325
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isWifiDirectAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    .line 336
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 337
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 338
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isWifiDirectAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 340
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 343
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
