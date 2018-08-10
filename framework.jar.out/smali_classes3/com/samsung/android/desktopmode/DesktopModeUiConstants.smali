.class public Lcom/samsung/android/desktopmode/DesktopModeUiConstants;
.super Ljava/lang/Object;
.source "DesktopModeUiConstants.java"


# static fields
.field public static final ACTION_DESKTOP_MODE_UPDATE_REQUEST:Ljava/lang/String; = "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

.field public static final ACTION_DOCK_UPDATE_NOTIFICATION_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.DOCK_UPDATE_NOTIFICATION_PRESSED"

.field public static final ACTION_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LATER_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.DOCK_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LATER_PRESSED"

.field public static final ACTION_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LEARN_MORE_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.DOCK_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LEARN_MORE_PRESSED"

.field public static final ACTION_TOUCHPAD_NOTIFICATION_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

.field public static final ACTION_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_LATER_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.DOCK_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_LATER_PRESSED"

.field public static final ACTION_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_SETTINGS_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.DOCK_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_SETTINGS_PRESSED"

.field private static final DIALOG_END:I = 0x63

.field private static final DIALOG_START:I = 0x0

.field public static final DIALOG_TYPE_ANY:I = 0x0

.field public static final DIALOG_TYPE_DISPLAY_UNSUPPORT:I = 0x7

.field public static final DIALOG_TYPE_DOCK_TA_WARNING_FAST_CHARGER:I = 0x9

.field public static final DIALOG_TYPE_DOCK_TA_WARNING_NOT_FAST_CHARGER:I = 0x8

.field public static final DIALOG_TYPE_DOCK_UPDATE_CONFIRMATION:I = 0xa

.field public static final DIALOG_TYPE_DOCK_UPDATE_CONFIRMATION_RECOVERY:I = 0xc

.field public static final DIALOG_TYPE_DOCK_UPDATE_WARNING_LOW_BATTERY:I = 0xb

.field public static final DIALOG_TYPE_LAUNCH_CONFIRMATION_MIRRORING:I = 0x1

.field public static final DIALOG_TYPE_LAUNCH_CONFIRMATION_PRESENTATION:I = 0x2

.field public static final DIALOG_TYPE_PROMOTION_DOCK:I = 0x5

.field public static final DIALOG_TYPE_PROMOTION_MOUSE:I = 0x4

.field public static final DIALOG_TYPE_TOUCHPAD:I = 0x6

.field public static final EXTRA_DESKTOP_MODE_STATE:Ljava/lang/String; = "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

.field public static final EXTRA_DESKTOP_MODE_STATE_DEFAULT:I = -0x1

.field public static final EXTRA_DESKTOP_MODE_STATE_DISABLED:I = 0x2

.field public static final EXTRA_DESKTOP_MODE_STATE_ENABLED:I = 0x1

.field public static final EXTRA_DESKTOP_MODE_STATE_FAST_CHARGING:I = 0x3

.field public static final EXTRA_DESKTOP_MODE_STATE_UPDATE:I = 0x0

.field private static final NOTIFICATION_START:I = 0xc8

.field public static final NOTIFICATION_TYPE_ONGOING_AVAILABLE_FIRST:I = 0xc8

.field public static final NOTIFICATION_TYPE_ONGOING_CAMERA_UNSUPPORT:I = 0xcc

.field public static final NOTIFICATION_TYPE_ONGOING_DOCK_FAST_CHARGING:I = 0xcd

.field public static final NOTIFICATION_TYPE_ONGOING_DOCK_FAST_CHARGING_WITH_MIRRORING:I = 0xce

.field public static final NOTIFICATION_TYPE_ONGOING_DOCK_FAST_CHARGING_WITH_USING:I = 0xcf

.field public static final NOTIFICATION_TYPE_ONGOING_DOCK_UPDATE:I = 0xd0

.field public static final NOTIFICATION_TYPE_ONGOING_MIRRORING:I = 0xc9

.field public static final NOTIFICATION_TYPE_ONGOING_USING:I = 0xca

.field public static final NOTIFICATION_TYPE_PHONE_SOFTWARE_UPDATE:I = 0xd2

.field public static final NOTIFICATION_TYPE_TOUCHPAD:I = 0xcb

.field public static final NOTIFICATION_TYPE_TRY_SAMSUNG_DEX_LABS:I = 0xd1

.field private static final PRESENTATION_START:I = 0x64

.field public static final PRESENTATION_TYPE_ANY:I = 0x6e

.field public static final PRESENTATION_TYPE_BLACK_SCREEN:I = 0x72

.field public static final PRESENTATION_TYPE_INTRO:I = 0x6f

.field public static final PRESENTATION_TYPE_LOADING_SCREEN_ENTER:I = 0x70

.field public static final PRESENTATION_TYPE_LOADING_SCREEN_EXIT:I = 0x71

.field public static final PRESENTATION_WHERE_ALL:I = 0x64

.field public static final PRESENTATION_WHERE_ANY:I = 0x65

.field public static final PRESENTATION_WHERE_EXTERNAL:I = 0x67

.field public static final PRESENTATION_WHERE_INTERNAL:I = 0x66

.field public static final STATE_DOCK_FAST_CHARGING_AVAILABLE:I = 0x1

.field public static final STATE_DOCK_FAST_CHARGING_ENABLING:I = 0x2

.field public static final STATE_DOCK_FAST_CHARGING_NOT_AVAILABLE:I = -0x1

.field public static final STATE_DOCK_FAST_CHARGING_USING:I = 0x3

.field public static final STATE_DOCK_FOTA_AVAILABLE:I = 0x1

.field public static final STATE_DOCK_FOTA_NOT_AVAILABLE:I = -0x1

.field public static final STATE_DOCK_FOTA_REQUEST_TO_CHECK:I = 0x0

.field public static final STATE_DOCK_FOTA_UPDATE_CONFIRMED:I = 0x2

.field public static final STATE_DOCK_FOTA_UPDATE_CONFIRMED_RECOVERY:I = 0x3

.field public static final STATE_DOCK_FOTA_UPDATE_FAILED:I = 0x14

.field public static final STATE_DOCK_FOTA_UPDATE_FAILED_NETWORK:I = 0x15

.field public static final STATE_DOCK_FOTA_UPDATE_IN_PROGRESS:I = 0x4

.field public static final STATE_DOCK_FOTA_UPDATE_IN_PROGRESS_RECOVERY:I = 0x5

.field public static final STATE_DOCK_FOTA_UPDATE_SUCCESSFUL:I = 0xa

.field public static final STATE_DOCK_FOTA_UPDATE_SUCCESSFUL_RECOVERY:I = 0xb

.field public static final UI_TYPE_NONE:I = -0x1

.field private static final VIRTUAL_DEVICE_START:I = 0x12c

.field public static final VIRTUAL_DEVICE_TOUCHPAD_DOCK_MODE:I = 0x12d

.field public static final VIRTUAL_DEVICE_TOUCHPAD_IRIS_MODE:I = 0x12e

.field public static final VIRTUAL_DEVICE_TOUCHPAD_NORMAL_MODE:I = 0x12c

.field public static final VIRTUAL_DEVICE_TYPE_TOUCHPAD:I = 0x136


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDialogType(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x63

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "UI_TYPE_NONE"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DIALOG_TYPE_ANY"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION_MIRRORING"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION_PRESENTATION"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "DIALOG_TYPE_PROMOTION_MOUSE"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "DIALOG_TYPE_PROMOTION_DOCK"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "DIALOG_TYPE_TOUCHPAD"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "DIALOG_TYPE_DISPLAY_UNSUPPORT"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "DIALOG_TYPE_DOCK_TA_WARNING_NOT_FAST_CHARGER"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "DIALOG_TYPE_DOCK_TA_WARNING_FAST_CHARGER"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "DIALOG_TYPE_DOCK_UPDATE_CONFIRMATION"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "DIALOG_TYPE_DOCK_UPDATE_WARNING_LOW_BATTERY"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "DIALOG_TYPE_DOCK_UPDATE_CONFIRMATION_RECOVERY"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "PRESENTATION_TYPE_ANY"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "PRESENTATION_TYPE_INTRO"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "PRESENTATION_TYPE_LOADING_SCREEN_ENTER"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "PRESENTATION_TYPE_LOADING_SCREEN_EXIT"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "PRESENTATION_TYPE_BLACK_SCREEN"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_AVAILABLE_FIRST"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_MIRRORING"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_USING"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "NOTIFICATION_TYPE_TOUCHPAD"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_CAMERA_UNSUPPORT"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_DOCK_FAST_CHARGING"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_DOCK_FAST_CHARGING_WITH_MIRRORING"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_DOCK_FAST_CHARGING_WITH_USING"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_DOCK_UPDATE"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "NOTIFICATION_TYPE_TRY_SAMSUNG_DEX_LABS"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "NOTIFICATION_TYPE_PHONE_SOFTWARE_UPDATE"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "VIRTUAL_DEVICE_TYPE_TOUCHPAD"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x72 -> :sswitch_11
        0xc8 -> :sswitch_12
        0xc9 -> :sswitch_13
        0xca -> :sswitch_14
        0xcb -> :sswitch_15
        0xcc -> :sswitch_16
        0xcd -> :sswitch_17
        0xce -> :sswitch_18
        0xcf -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd1 -> :sswitch_1b
        0xd2 -> :sswitch_1c
        0x136 -> :sswitch_1d
    .end sparse-switch
.end method
