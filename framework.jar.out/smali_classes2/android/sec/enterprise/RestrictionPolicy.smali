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

    const-string/jumbo v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.settings.ActivityPicker"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.AppWidgetPickActivity"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.widget.SettingsAppWidgetProvider"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockAdditionalPin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockFaceWarning"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockGeneric"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockMotion"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockPassword"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockPattern"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ConfirmLockPassword"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ConfirmLockPattern"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.DeviceAdminAdd"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.bluetooth.DevicePickerActivity"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.wfd.WfdPickerActivity"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.bluetooth.BluetoothPairingDialog"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.bluetooth.BluetoothEnableActivity"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintLockSettings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.fingerprint.RegisterFingerprint"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.KnoxSetLockFingerprintPassword"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.KnoxChooseLockFingerprintPassword"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.notification.RedactionInterstitial"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.KnoxFingerprintNotice"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.settings.PRIVATEBOX_SETTINGS"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAndroidBeamAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAndroidBeamAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isAudioRecordAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAudioRecordAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBackgroundProcessLimitAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isBackupAllowed(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isBackupAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isCameraEnabled(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isCameraEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isClipboardAllowed(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isClipboardAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isClipboardShareAllowed()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardShareAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleCrashReportAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isGoogleCrashReportAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isKillingActivitiesOnLeaveAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isNFCEnabled()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabledWithMsg(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isNonMarketAppAllowed()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isNonMarketAppAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPowerOffAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isPowerOffAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isSBeamAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSBeamAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isSVoiceAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSVoiceAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenCaptureEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isSettingsChangesAllowed returning true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isVideoRecordAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isVideoRecordAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isWifiDirectAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isWifiDirectAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
