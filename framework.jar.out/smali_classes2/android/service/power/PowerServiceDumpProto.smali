.class public final Landroid/service/power/PowerServiceDumpProto;
.super Ljava/lang/Object;
.source "PowerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/power/PowerServiceDumpProto$ActiveWakeLocksProto;,
        Landroid/service/power/PowerServiceDumpProto$ConstantsProto;,
        Landroid/service/power/PowerServiceDumpProto$UidProto;,
        Landroid/service/power/PowerServiceDumpProto$UserActivityProto;
    }
.end annotation


# static fields
.field public static final ACTIVE_WAKE_LOCKS:J = 0x11100000010L

.field public static final ARE_UIDS_CHANGED:J = 0x10d0000002dL

.field public static final ARE_UIDS_CHANGING:J = 0x10d0000002cL

.field public static final BATTERY_LEVEL:J = 0x10300000007L

.field public static final BATTERY_LEVEL_WHEN_DREAM_STARTED:J = 0x10300000008L

.field public static final CONSTANTS:J = 0x11100000001L

.field public static final DEVICE_IDLE_TEMP_WHITELIST:J = 0x2030000001dL

.field public static final DEVICE_IDLE_WHITELIST:J = 0x2030000001cL

.field public static final DIRTY:J = 0x10300000002L

.field public static final DOCK_STATE:J = 0x11000000009L

.field public static final DOCK_STATE_CAR:I = 0x2

.field public static final DOCK_STATE_DESK:I = 0x1

.field public static final DOCK_STATE_HE_DESK:I = 0x4

.field public static final DOCK_STATE_LE_DESK:I = 0x3

.field public static final DOCK_STATE_UNDOCKED:I = 0x0

.field public static final IS_BATTERY_LEVEL_LOW:J = 0x10d00000019L

.field public static final IS_BOOT_COMPLETED:J = 0x10d0000000cL

.field public static final IS_DEVICE_IDLE_MODE:J = 0x10d0000001bL

.field public static final IS_DISPLAY_READY:J = 0x10d00000025L

.field public static final IS_HAL_AUTO_INTERACTIVE_MODE_ENABLED:J = 0x10d0000000fL

.field public static final IS_HAL_AUTO_SUSPEND_MODE_ENABLED:J = 0x10d0000000eL

.field public static final IS_HOLDING_DISPLAY_SUSPEND_BLOCKER:J = 0x10d00000027L

.field public static final IS_HOLDING_WAKE_LOCK_SUSPEND_BLOCKER:J = 0x10d00000026L

.field public static final IS_LIGHT_DEVICE_IDLE_MODE:J = 0x10d0000001aL

.field public static final IS_LOW_POWER_MODE_ENABLED:J = 0x10d00000018L

.field public static final IS_POWERED:J = 0x10d00000005L

.field public static final IS_PROXIMITY_POSITIVE:J = 0x10d0000000bL

.field public static final IS_REQUEST_WAIT_FOR_NEGATIVE_PROXIMITY:J = 0x10d00000015L

.field public static final IS_SANDMAN_SCHEDULED:J = 0x10d00000016L

.field public static final IS_SANDMAN_SUMMONED:J = 0x10d00000017L

.field public static final IS_SCREEN_BRIGHTNESS_BOOST_IN_PROGRESS:J = 0x10d00000024L

.field public static final IS_STAY_ON:J = 0x10d0000000aL

.field public static final IS_SYSTEM_READY:J = 0x10d0000000dL

.field public static final IS_WAKEFULNESS_CHANGING:J = 0x10d00000004L

.field public static final LAST_INTERACTIVE_POWER_HINT_TIME_MS:J = 0x10400000022L

.field public static final LAST_SCREEN_BRIGHTNESS_BOOST_TIME_MS:J = 0x10400000023L

.field public static final LAST_SLEEP_TIME_MS:J = 0x1040000001fL

.field public static final LAST_USER_ACTIVITY_TIME_MS:J = 0x10400000020L

.field public static final LAST_USER_ACTIVITY_TIME_NO_CHANGE_LIGHTS_MS:J = 0x10400000021L

.field public static final LAST_WAKE_TIME_MS:J = 0x1040000001eL

.field public static final LOOPER:J = 0x1110000002fL

.field public static final NOTIFY_LONG_DISPATCHED_MS:J = 0x10400000012L

.field public static final NOTIFY_LONG_NEXT_CHECK_MS:J = 0x10400000013L

.field public static final NOTIFY_LONG_SCHEDULED_MS:J = 0x10400000011L

.field public static final PLUG_TYPE:J = 0x11000000006L

.field public static final PLUG_TYPE_NONE:I = 0x0

.field public static final PLUG_TYPE_PLUGGED_AC:I = 0x1

.field public static final PLUG_TYPE_PLUGGED_USB:I = 0x2

.field public static final PLUG_TYPE_PLUGGED_WIRELESS:I = 0x4

.field public static final SCREEN_DIM_DURATION_MS:J = 0x1030000002bL

.field public static final SCREEN_OFF_TIMEOUT_MS:J = 0x1030000002aL

.field public static final SETTINGS_AND_CONFIGURATION:J = 0x11100000028L

.field public static final SLEEP_TIMEOUT_MS:J = 0x10700000029L

.field public static final SUSPEND_BLOCKERS:J = 0x21100000031L

.field public static final UIDS:J = 0x2110000002eL

.field public static final USER_ACTIVITY:J = 0x11100000014L

.field public static final WAKEFULNESS:J = 0x11000000003L

.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2

.field public static final WAKEFULNESS_UNKNOWN:I = 0x4

.field public static final WAKE_LOCKS:J = 0x21100000030L

.field public static final WIRELESS_CHARGER_DETECTOR:J = 0x11100000032L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
