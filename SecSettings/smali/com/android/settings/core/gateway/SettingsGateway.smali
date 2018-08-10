.class public Lcom/android/settings/core/gateway/SettingsGateway;
.super Ljava/lang/Object;
.source "SettingsGateway.java"


# static fields
.field public static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x7b

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/assist/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/gestures/AssistGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/gestures/PickupGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/ExternalSourcesDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/PictureInPictureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/PictureInPictureDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/TestingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/ManageDomainUrls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/dashboard/SupportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/system/SystemDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/accounts/UserAndAccountDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/webview/WebViewAppPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/CryptKeeperInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$NfcSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/Settings$NetworkDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/Settings$AppAndNotificationDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/Settings$StorageDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$UserAndAccountDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$SecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$SystemDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$SupportDashboardActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$BlockNotificationListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LanguageAndInputSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$EnterprisePrivacySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ConnectionsSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$GeneralDeviceSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$CloudAccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DomesticSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LockscreenSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$BiometricsAndSecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ZenModeDNDSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-class v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$NfcSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PenSettingsMenuActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DeviceMaintenanceSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$UsefulFeatureMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$EasyModeAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$EasyModeMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    const/16 v0, 0x74

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.settings.GigaMultiPath"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleMagnifierPreferenceFragment"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleAirWakeUpPreferenceFragment"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleAccessControlPreferenceFragment"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.notificationreminder.NotificationReminderPreferenceFragment"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.samsung.android.settings.activekey.ActiveKeySettings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.activekey.ActiveKeyAppGridView"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.AirplaneModeSettings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.ApplicationsSettings"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.DCMHomeSettings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.autopoweronoff.AutoPowerOnOffSettings"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.bluelightfilter.BlueLightFilterSettings"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothAVCSettings"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothDualPlaySettings"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothControlHistory"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothIBRSettings"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.guide.BluetoothHelpPage"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.guide.WifiHelpPage"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.CloudAccountSettings"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.ConnectionsSettings"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.DataSlotChoice"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.devicevisibility.DeviceVisibilitySettings"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.DockSettings"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.DomesticSettings"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.fmm.FindMyMobileSettings"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.GigaLteSettings"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.GlobalRoamingSettings"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.LGTCustomerService"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.GlobalLteRoaming"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.LGTRoamingEnv"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.HongBaoAssistantPreferenceFragment"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.datausage.BillingCycleChnSettings"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenMenuSettings"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenSettings"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.BiometricsAndSecuritySettings"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.SecuredLockSettingsMenu"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.ShowInfomationMenu"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.LteModeActivity"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.mirrorlink.MirrorLink"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.BlockNotificationList"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.NotificationsSubSettings"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.PriorityNotiAppList"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.VibrationsSettings"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.VolumeLimiterSettings"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.VolumeSettings"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.ZenModeDNDSettings"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.OtherSecuritySettings"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.personalpage.PersonalPageSettings"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.safetycare.PanicModeSettings"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.safetycare.SafetyCareEmergencyMode"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.safetycare.SafetyCareSettings"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.SmartStaySettings"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.FullScreenAppsSettings"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.NewOneHandOperationSettings"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.TRoamingSettings"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.FingerSensorGestureSettings"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.QuickCameraSettings"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.MultiWindowSettings"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.RecentsKeySettings"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.Usefulfeature"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.UsefulFeatureHub"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.powersaving.LowBatteryFragment"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.powersaving.PowerSavingValueFragment"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockappshortcut.LockAppShortcutSettings"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.dualclock.DualClockSetting"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.easymode.EasyModeApp"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.SoftwareUpdateSettings"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.smartbonding.SmartBondingSettings"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.GeneralDeviceSettings"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.nfc.NfcSettings"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.nfc.osaifu.NfcOsaifukeitaiSettings"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.nfc.PaymentSettings"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.nfc.TapAndPaySettings"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.boostmode.BoostModeCustomFragment"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.ethernet.EthernetSettings"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.spen.PenAirCmdSettingsMenu"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.multisound.MultiSoundSettings"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.spen.SPenSettingsMenu"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.handwritingsearch.HandwritingLanguagePreference"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.deviceinfo.simlockstatus.SimLockStatus"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.AutoBrightness"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarHardPressSetting"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.BadgeAppIconSettings"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.WirelessSettings"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.DateTimeSettings"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.SecDisplaySettings"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.StatusBar"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.ScreenResolutionSettings"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.display.DisplayTemperatureSettings"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.PrivacySettings"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.PrivacyResetSettings"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettings"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsHearing"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsMobility"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsVision"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.AssistantMenuPreferenceFragment"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.hearing.LightNotificationPreferenceFragment"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundSettings"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundModeSettings"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.WifiApSettings"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.tethering.BtTetherSettings"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.location.LocationUseInBackground"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessories.LedCoverCallerIDSettings"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.accessories.LedCoverCallerIDList"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenNotificationApplist"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.AdditionalInformationSettings"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarSettings"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarHideButtonAppsSettings"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.PressureTouchActionSettings"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.DeviceMaintenanceSettings"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.language.LanguageAndInputSettingsSamsung"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.applications.defaultapps.DefaultAutofillPicker"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.settings.qstile.SecDevelopmentTileConfigFragment"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
