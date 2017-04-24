.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$1;,
        Lcom/android/server/input/InputManagerService$2;,
        Lcom/android/server/input/InputManagerService$ControlWakeKey;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$Shell;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;
    }
.end annotation


# static fields
.field private static final BIGDATA_ENABLE:Z

.field public static final BLOCK_DEVICE_INTERNAL_TKEY:I = 0x2

.field public static final BLOCK_DEVICE_INTERNAL_TSP:I = 0x1

.field public static final BLOCK_DEVICE_NONE:I = 0x0

.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EARJACK_CONNECT:I = 0x2

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field public static final FLAG_MONITOR_KEY_FILTER:I = 0x1

.field public static final FLAG_MONITOR_MOTION_FILTER:I = 0x2

.field public static final FLAG_MONITOR_NO_FILTER:I = 0x0

.field public static final FLAG_MONITOR_SOURCE_CLASS_POINTER_FILTER:I = 0x4

.field public static final FLAG_MONITOR_TOOL_TYPE_FINGER_FILTER:I = 0x10

.field public static final FLAG_MONITOR_TOOL_TYPE_STYLUS_FILTER:I = 0x8

.field private static final HOME_KEY_SCANCODE:Ljava/lang/String; = "172"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_INPUT_METHOD_SUBTYPE_CHANGED:I = 0x7

.field private static final MSG_NOTIFY_SLUG:I = 0x9

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_TOUCHPAD_ON_OFF:I = 0x8

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final MSG_VR_PROXIMITY_EVENT_CHANGED:I = 0x10

.field private static final MSG_VR_TA_EVENT_CHANGED:I = 0x11

.field private static final SAR_DEVICE_GRIP:I = 0x1

.field private static final SAR_DEVICE_TSP:I = 0x20

.field private static final SMART_HALLIC_FLIP_BACKOPEN:I = 0x2

.field private static final SMART_HALLIC_FLIP_CLOSE:I = 0x0

.field private static final SMART_HALLIC_FLIP_OPEN:I = 0x1

.field public static final SW_BACKFOLDING:I = 0x1d

.field public static final SW_BACKFOLDING_BIT:I = 0x20000000

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_COVER_ATTACH:I = 0x1b

.field public static final SW_COVER_ATTACH_BIT:I = 0x8000000

.field public static final SW_FLIP:I = 0x15

.field public static final SW_FLIP_BIT:I = 0x200000

.field public static final SW_FOLDING:I = 0x1c

.field public static final SW_FOLDING_BIT:I = 0x10000000

.field public static final SW_GLOVE:I = 0x16

.field public static final SW_GLOVE_BIT:I = 0x400000

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_PEN_INSERT:I = 0x13

.field public static final SW_PEN_INSERT_BIT:I = 0x80000

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field public static final SW_W1:I = 0x1a

.field public static final SW_W1_BIT:I = 0x4000000

.field static final TAG:Ljava/lang/String; = "InputManager"

.field private static final TA_CONNECT:I = 0x1

.field private static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field private static final WM_ACTION_WAKE_UP:I = 0x2


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private final POINTER_SPEED_ADJUSTMENT:I

.field private cableConnection:I

.field private mAddingGamepadIntentPending:Z

.field private mBlockDeviceMode:I

.field mBlockTkeyCallerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlockTspCallerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mCurrentCoverType:I

.field private mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

.field private mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private mDssController:Lcom/android/server/DssController;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mIsKidsMode:Z

.field private mIsShowHoverPointer:Z

.field private mIsValidIntentForSAR:Z

.field private mKeyboardLayoutNotificationShown:Z

.field private mLastSmartHallFlipState:I

.field final mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

.field private mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field private mMissingKeyboardLayoutNotificationPending:Z

.field private mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPointerSpeedAdjustment:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPtr:J

.field private mSuspendibleDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchpadOnOffToast:Landroid/widget/Toast;

.field private mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWasBackfolded:Z

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

.field private numGamePads:I

.field private previousAopStatus:Z

.field private previousStatus:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/input/InputManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/input/InputManagerService;->cableConnection:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/input/InputManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/input/InputManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/input/InputManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMouseControlType(JI)V

    return-void
.end method

.method static synthetic -wrap11(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMouseCursorVisibility(JZ)V

    return-void
.end method

.method static synthetic -wrap12(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->sendSGReport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->sendVRProximityEventChanged(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->sendVRTAEventChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(JLandroid/view/InputEvent;IIIIII)I
    .locals 2

    invoke-static/range {p0 .. p8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerViewportInternal(Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showTouchpadOnOffToast(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/input/InputManagerService;JZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    return-void
.end method

.method static synthetic -wrap8(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic -wrap9(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMirrorLinkMode(JZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->BIGDATA_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    new-instance v2, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v2}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    new-array v2, v3, [Landroid/view/InputDevice;

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/server/input/InputManagerService;->numGamePads:I

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mAddingGamepadIntentPending:Z

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->previousStatus:Z

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->previousAopStatus:Z

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mCurrentCoverType:I

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mPowerManager:Landroid/os/PowerManager;

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mWasBackfolded:Z

    const/4 v2, -0x3

    iput v2, p0, Lcom/android/server/input/InputManagerService;->POINTER_SPEED_ADJUSTMENT:I

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mPointerSpeedAdjustment:I

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    const-string/jumbo v2, "cover_test_mode"

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->COVER_TEST_MODE:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mIsValidIntentForSAR:Z

    iput v3, p0, Lcom/android/server/input/InputManagerService;->cableConnection:I

    new-instance v2, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const-class v2, Landroid/hardware/input/InputManagerInternal;

    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v3, p0, v5}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    sput v2, Landroid/view/PointerIcon;->mCurrentDensity:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.mirrorlink.android.service.TMS_SERVICE_PERMISSION"

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v2}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DssController;

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDssController:Lcom/android/server/DssController;

    return-void
.end method

.method private SetBackOffEventToRIL(IZ)V
    .locals 5

    const-string/jumbo v2, "ril.backoffstate"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_1

    or-int/2addr v0, p1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableGripFromTsp, backoffstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " deviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OnOff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    not-int v2, p1

    and-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "InputManager"

    const-string/jumbo v3, "PhoneService is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "InputManager"

    const-string/jumbo v3, "RemoteException occurs in setTransmitPower"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 4

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private checkInjectEventsPermission(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INJECT_EVENTS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 21

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    move/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v18, :cond_0

    monitor-exit v19

    return-void

    :cond_0
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v16

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    mul-int/lit8 v18, v12, 0x2

    move/from16 v0, v18

    new-array v2, v0, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    move v15, v14

    :goto_1
    if-ge v3, v12, :cond_5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    move-object/from16 v18, v0

    aget-object v4, v18, v3

    mul-int/lit8 v18, v3, 0x2

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v20

    aput v20, v2, v18

    mul-int/lit8 v18, v3, 0x2

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v4}, Landroid/view/InputDevice;->getGeneration()I

    move-result v20

    aput v20, v2, v18

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-virtual {v4}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    add-int/lit8 v14, v15, 0x1

    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v4}, Landroid/view/InputDevice;->isGamePad()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    if-eqz v18, :cond_2

    add-int/lit8 v17, v17, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v15, v14

    goto :goto_1

    :cond_3
    move v14, v15

    goto :goto_2

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v14, v15

    goto :goto_2

    :cond_5
    monitor-exit v19

    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception v18

    :goto_4
    monitor-exit v19

    throw v18

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    move-object/from16 v19, v0

    monitor-enter v19

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v13, :cond_9

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    :cond_7
    if-nez v8, :cond_8

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    monitor-exit v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/input/InputManagerService;->numGamePads:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const-string/jumbo v18, "InputManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Number of connected gamepad is changed to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/input/InputManagerService;->numGamePads:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService;->mAddingGamepadIntentPending:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.input.GAMEPAD_DEVICE_ADDED"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_b
    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/input/InputManagerService;->numGamePads:I

    :cond_c
    return-void

    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/InputDevice;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto/16 :goto_6

    :cond_f
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    move-object/from16 v19, v0

    monitor-enter v19

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v13, :cond_12

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v8

    if-nez v8, :cond_10

    const/4 v9, 0x1

    if-ge v3, v15, :cond_10

    const/4 v10, 0x1

    if-nez v6, :cond_11

    move-object v6, v4

    :cond_10
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    const/4 v11, 0x1

    goto :goto_9

    :cond_12
    monitor-exit v19

    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutNotificationPending:Z

    if-eqz v11, :cond_13

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    goto/16 :goto_6

    :catchall_2
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_13
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/input/InputManagerService;->numGamePads:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService;->mAddingGamepadIntentPending:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.input.GAMEPAD_DEVICE_REMOVED"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_7

    :catchall_3
    move-exception v18

    move v14, v15

    goto/16 :goto_4

    :cond_15
    move v14, v15

    goto/16 :goto_2
.end method

.method private deliverTabletModeChanged(JZ)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    return-void
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCoverTestModeSetting(I)I
    .locals 5

    move v0, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "cover_test_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v8, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-object v10

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v9, p0, p1, v8, v3}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    return-object v10

    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_3

    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_6

    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v9}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    return-object v1
.end method

.method private getDiffKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v2, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v5

    :cond_1
    const-string/jumbo v2, "InputManager"

    const-string/jumbo v3, "loading keyboard layout for BKB-10"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ".*arabic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*bulgarian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*english_uk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*french_ca"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*greek"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*hebrew"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*italian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*norwegian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*spanish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*swiss_french"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*swiss_german"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".*turkish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "_bkb10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overlay KLD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Lcom/android/server/input/InputManagerService$23;

    invoke-direct {v2, p0, v1}, Lcom/android/server/input/InputManagerService$23;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_4
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string/jumbo v9, "devices"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v9, "device"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_3

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v1, v2

    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    :cond_3
    :try_start_3
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    :goto_4
    :try_start_5
    const-string/jumbo v9, "InputManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_6
    throw v9

    :catch_5
    move-exception v4

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v3

    goto :goto_3

    :catch_7
    move-exception v5

    move-object v1, v2

    goto :goto_4
.end method

.method private getGloveModeSetting(Z)Z
    .locals 1

    move v0, p1

    return p1
.end method

.method private getHoverTapSlop()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v6, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v9

    :cond_1
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v6, v1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v6

    const/16 v8, 0x4e8

    if-ne v6, v8, :cond_2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/16 v8, 0x7021

    if-ne v6, v8, :cond_2

    const/4 v3, 0x1

    :cond_2
    monitor-exit v7

    if-eqz v3, :cond_4

    const-string/jumbo v6, "InputManager"

    const-string/jumbo v7, "loading keyboard layout for BKB-10"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ".*arabic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*bulgarian"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*english_uk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*french_ca"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*greek"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*hebrew"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*italian"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*norwegian"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*norwegian_sami"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*spanish"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*swiss_french"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*swiss_german"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, ".*turkish"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string/jumbo v6, "_bkb10"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string/jumbo v6, "InputManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "overlay KLD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    new-instance v6, Lcom/android/server/input/InputManagerService$22;

    invoke-direct {v6, p0, v5}, Lcom/android/server/input/InputManagerService$22;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v4, v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "InputManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_6
    return-object v5
.end method

.method private getKidsModeSetting(Z)Z
    .locals 1

    move v0, p1

    return p1
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier and descriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPenHoveringSetting(Z)Z
    .locals 6

    move v1, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getPenHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pointer_speed"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getShowFingerHoveringSetting(Z)Z
    .locals 1

    move v0, p1

    return p1
.end method

.method private getShowHoveringSetting(Z)Z
    .locals 6

    move v1, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering_pointer"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getShowHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 5

    move v0, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_touches"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSideSyncFromSetting(Z)Z
    .locals 6

    move v1, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_presentation"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getSideSyncSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSpenScreenOnFromSettings(Z)Z
    .locals 6

    move v1, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_off_memo"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getSpenScreenOnFromSettings \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSuspendibleDevices(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get suspendable device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "No InputMethod is running, ignoring change"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "keyboard"

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {p0, v3, v0}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "InputMethodSubtype changed to non-keyboard subtype, ignoring change"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    .locals 9

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    const/4 v3, 0x0

    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v1, v5, v3

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/hardware/input/InputDeviceIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v8, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v8}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v7

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v7

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    monitor-exit v4

    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x104088d

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    :cond_0
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;II)Z
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "event must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p3, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mode is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/input/InputManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-interface {v2, v6}, Lcom/android/server/DssController;->getScalingFactor(I)F

    move-result v11

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v12, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v11

    invoke-virtual {v12, v2}, Landroid/view/MotionEvent;->scale(F)V

    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v9, 0x7530

    const/high16 v10, 0x8000000

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v10}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :pswitch_1
    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " permission denied."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    const/4 v2, 0x1

    return v2

    :pswitch_3
    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input event injection from pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " timed out."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v2, 0x433

    if-eq v1, v2, :cond_0

    const/16 v2, 0x434

    if-ne v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v2

    return v2
.end method

.method private interceptKeyBeforeQuickAccess(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQuickAccess(IFF)V

    return-void
.end method

.method private interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2
.end method

.method private isKeyboardCover(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeAddOrRemoveVirtualGamePadDevice(JZ)I
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeCoverEventFinished(J)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeGetInboundQueueLength(J)I
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcon(JII)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetBlockDevice(JI)V
.end method

.method private static native nativeSetCoverHeight(JI)V
.end method

.method private static native nativeSetCoverTestModeType(JI)V
.end method

.method private static native nativeSetCoverVerify(JI)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDisplayViewport(JZIIIIIIIIIIII)V
.end method

.method private static native nativeSetFlipCoverTouchEnabled(JZ)V
.end method

.method private static native nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetGloveMode(JZ)V
.end method

.method private static native nativeSetHoverIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetKidsMode(JZ)V
.end method

.method private static native nativeSetLedState(JZ)I
.end method

.method private static native nativeSetMirrorLinkMode(JZ)V
.end method

.method private static native nativeSetMonitorChannelFilter(JLandroid/view/InputChannel;I)V
.end method

.method private static native nativeSetMouseButtonActionKey(JII)V
.end method

.method private static native nativeSetMouseControlType(JI)V
.end method

.method private static native nativeSetMouseCursorVisibility(JZ)V
.end method

.method private static native nativeSetPenHovering(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetPointerViewport(JIIIIIIIIIIII)V
.end method

.method private static native nativeSetShowFingerHovering(JZ)V
.end method

.method private static native nativeSetShowHovering(JZ)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetStartedShutdown(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const-string/jumbo v3, "MaybeSluggish"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/input/InputManagerService;->BIGDATA_ENABLE:Z

    if-nez v3, :cond_0

    return-wide v8

    :cond_0
    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    const-string/jumbo v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v2, v1, v3

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo p3, "Invalid"

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object p3, v0, v4

    goto :goto_1

    :cond_3
    const-string/jumbo p3, "SYSTEM"

    :cond_4
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, p3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-wide v8

    :cond_5
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method private notifyConfigurationChanged(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifySwitch(JII)V
    .locals 17

    const-string/jumbo v14, "InputManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "notifySwitch: values="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mask="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v14, p4, 0x1

    if-eqz v14, :cond_0

    and-int/lit8 v14, p3, 0x1

    if-nez v14, :cond_c

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v12}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    :cond_0
    move/from16 v0, p4

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_1

    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_d

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v11}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    :cond_1
    const/high16 v14, 0x80000

    and-int v14, v14, p4

    if-eqz v14, :cond_2

    const/high16 v14, 0x80000

    and-int v14, v14, p3

    if-nez v14, :cond_e

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v13}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPenSwitchChanged(JZ)V

    :cond_2
    const/high16 v14, 0x200000

    and-int v14, v14, p4

    if-eqz v14, :cond_6

    const/high16 v14, 0x200000

    and-int v14, v14, p3

    if-eqz v14, :cond_f

    const/4 v8, 0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/InputManagerService;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v7

    if-eqz v7, :cond_3

    if-nez v8, :cond_10

    if-nez v8, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/input/InputManagerService;->mCurrentCoverType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/input/InputManagerService;->isKeyboardCover(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_10

    :cond_3
    :goto_4
    if-nez v8, :cond_4

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/input/InputManagerService;->mCurrentCoverType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/input/InputManagerService;->isKeyboardCover(I)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v8}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCoverSwitchStateChanged(JZ)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v8}, Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;->notifyCoverSwitchStateChanged(JZ)V

    :cond_6
    const/high16 v14, 0x400000

    and-int v14, v14, p4

    if-eqz v14, :cond_7

    const/high16 v14, 0x400000

    and-int v14, v14, p3

    if-eqz v14, :cond_11

    const/4 v10, 0x1

    :cond_7
    :goto_5
    const/high16 v14, 0x4000000

    and-int v14, v14, p4

    if-eqz v14, :cond_8

    const/high16 v14, 0x4000000

    and-int v14, v14, p3

    if-eqz v14, :cond_12

    const/4 v5, 0x1

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/InputManagerService;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v7

    if-eqz v7, :cond_8

    :try_start_1
    move-wide/from16 v0, p1

    invoke-interface {v7, v0, v1, v5}, Lcom/samsung/android/cover/ICoverManager;->notifyCoverAttachStateChanged(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_7
    const/high16 v14, 0x8000000

    and-int v14, v14, p4

    if-eqz v14, :cond_9

    const/high16 v14, 0x8000000

    and-int v14, v14, p3

    if-eqz v14, :cond_13

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

    move-wide/from16 v0, p1

    invoke-interface {v14, v0, v1, v6}, Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;->notifyUnverifiedCoverAttachChanged(JZ)V

    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v14, :cond_a

    move/from16 v0, p4

    and-int/lit16 v14, v0, 0xd4

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    :cond_a
    and-int/lit8 v14, p4, 0x2

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    const-wide/16 v14, -0x1

    and-long v14, v14, p1

    long-to-int v14, v14

    iput v14, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v14, 0x20

    shr-long v14, p1, v14

    long-to-int v14, v14

    iput v14, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    and-int/lit8 v14, p3, 0x2

    if-eqz v14, :cond_15

    const/4 v14, 0x1

    :goto_a
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v15, 0x6

    invoke-virtual {v14, v15, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    return-void

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_10
    :try_start_2
    move-wide/from16 v0, p1

    invoke-interface {v7, v0, v1, v8}, Lcom/samsung/android/cover/ICoverManager;->notifyCoverSwitchStateChanged(JZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v9

    const-string/jumbo v14, "InputManager"

    const-string/jumbo v15, "RemoteException in notifyCoverSwitchStateChanged: "

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v9

    const-string/jumbo v14, "InputManager"

    const-string/jumbo v15, "RemoteException in notifyCoverAttachStateChanged: "

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v14, "InputManager"

    const-string/jumbo v15, "UnVerifiedCoverAttachCallbacks is not registered"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_15
    const/4 v14, 0x0

    goto :goto_a
.end method

.method private notifyVRProximityEventChanged(I)V
    .locals 3

    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVRProximityEventChanged event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private notifyVRTAEventChanged(I)V
    .locals 3

    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVRTAEventChanged event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onTabletModeChangedListenerDied(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$14;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerCoverTestModeSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cover_test_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$15;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerGloveModeSettingObserver()V
    .locals 0

    return-void
.end method

.method private registerKidsModeSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$17;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$17;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerPenHoveringSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$18;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$18;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerShowFingerHoveringPointerSettingObserver()V
    .locals 0

    return-void
.end method

.method private registerShowFingerHoveringSettingObserver()V
    .locals 0

    return-void
.end method

.method private registerShowHoveringPointerSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$16;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$13;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerSideSyncSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sidesync_source_presentation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$19;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$19;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerSpenScreenOnSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_memo"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$20;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$20;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    return-void
.end method

.method private sendSGReport(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sys.isdumpstaterunning"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.SG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "from"

    const v2, 0x11d29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private sendVRProximityEventChanged(I)V
    .locals 4

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVRProximityEventChanged event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "GearVrManagerInternal is null!! sendVRProximityEventChanged ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendVRTAEventChanged(I)V
    .locals 4

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVRTAEventChanged event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "GearVrManagerInternal is null!! sendVRTAEventChanged ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAopMode(Z)V
    .locals 4

    const-string/jumbo v0, "/sys/class/sec/sec_epen/epen_aop_mode"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "epen_aop_mode : enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move-object/from16 v0, p2

    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    move/from16 v16, v0

    move/from16 v4, p1

    invoke-static/range {v2 .. v16}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(JZIIIIIIIIIIII)V

    return-void
.end method

.method private setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    :cond_0
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    goto :goto_0
.end method

.method private setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p2, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2

    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    return-void
.end method

.method private setPointerViewportInternal(Landroid/hardware/display/DisplayViewport;)V
    .locals 14

    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v3, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget-object v4, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iget v13, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    invoke-static/range {v0 .. v13}, Lcom/android/server/input/InputManagerService;->nativeSetPointerViewport(JIIIIIIIIIIII)V

    :cond_0
    return-void
.end method

.method private setSuspendibleDevices(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "InputManager"

    const-string/jumbo v3, "Not exist SuspendibleDevices"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v3, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_2

    const-string/jumbo v2, "enabled"

    :goto_2
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "disabled"

    goto :goto_2

    :cond_3
    return v4

    :cond_4
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSuspendibleDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_5

    move v5, v4

    :cond_5
    invoke-direct {p0, v2, v5}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v3, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_6

    const-string/jumbo v2, "enabled"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    const-string/jumbo v2, "disabled"

    goto :goto_3

    :cond_7
    return v5
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .locals 10

    const v9, 0x104088d

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "input_device_identifier"

    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x104088e

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10804c0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v3, 0x106005a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v9, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    :cond_1
    return-void
.end method

.method private showTouchpadOnOffToast(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x433

    if-ne p1, v2, :cond_1

    const v2, 0x104088b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTouchpadOnOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const v2, 0x104088c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sysfsCheck(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return v5

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    return v4

    :catch_1
    move-exception v1

    :goto_0
    return v5

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method

.method private sysfsRead(Ljava/lang/String;Z)I
    .locals 13

    const/4 v12, -0x1

    const/4 v0, 0x0

    const/4 v8, -0x1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_1
    const/4 v0, 0x0

    :cond_0
    :goto_2
    return v8

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_2

    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "InputManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "create new file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_1
    const-string/jumbo v9, "InputManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file already exists:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v12

    :catch_1
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    return v12

    :catch_4
    move-exception v7

    :try_start_8
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v0, 0x0

    :cond_4
    :goto_3
    return v12

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v9

    if-eqz v0, :cond_5

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    const/4 v0, 0x0

    :cond_5
    :goto_4
    throw v9

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private sysfsWrite(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/android/server/input/InputManagerService$7;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0xc0080

    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v7, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 8

    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0xc0080

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 25

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    return-void

    :cond_0
    const-string/jumbo v22, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_3

    move/from16 v7, p4

    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :try_start_1
    const-string/jumbo v22, "keyboard-layouts"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    if-nez v13, :cond_4

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void

    :cond_2
    const-string/jumbo v6, ""

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    :try_start_3
    const-string/jumbo v22, "keyboard-layout"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    sget-object v22, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v8

    const/16 v22, 0x4

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/16 v22, 0x5

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    if-eqz v18, :cond_5

    if-nez v5, :cond_7

    :cond_5
    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v22

    :try_start_6
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    throw v22
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v14

    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_7
    if-eqz v15, :cond_5

    :try_start_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_8

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    :cond_8
    new-instance v3, Landroid/hardware/input/KeyboardLayout;

    invoke-direct/range {v3 .. v10}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v15, v3}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v22

    :try_start_8
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    throw v22

    :cond_9
    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Skipping unrecognized element \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\' in keyboard layout resource from receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v3, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    return-void

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addOrRemoveVirtualGamePadDevice(Z)I
    .locals 3

    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOrRemoveVirtualGamePadDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeAddOrRemoveVirtualGamePadDevice(JZ)I

    move-result v0

    return v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    monitor-exit v2

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public coverEventFinished()V
    .locals 2

    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "Cover event finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeCoverEventFinished(J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v5, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v6, v7}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "  Keyboard Layouts:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/input/InputManagerService$21;

    invoke-direct {v5, p0, p2}, Lcom/android/server/input/InputManagerService$21;-><init>(Lcom/android/server/input/InputManagerService;Ljava/io/PrintWriter;)V

    invoke-direct {p0, v5}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    const-string/jumbo v7, "  "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/input/PersistentDataStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mBlockDeviceMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string/jumbo v5, "      TSP blocked by:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "          "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_3

    const-string/jumbo v5, "      TKEY blocked by:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "          "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public enableDeviceForBackOff(IZ)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/sys/class/sec/sec_touchkey/sar_enable"

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->sysfsCheck(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "not found sec_touchkey sar_enable file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    const-string/jumbo v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->sysfsCheck(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "not found tsp cmd file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableDeviceForBackOff deviceID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "/sys/class/sec/sec_touchkey/sar_enable"

    const-string/jumbo v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const-string/jumbo v1, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v2, "sar_enable,1"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_6
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "/sys/class/sec/sec_touchkey/sar_enable"

    const-string/jumbo v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_8

    const-string/jumbo v1, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v2, "sar_enable,0"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v4}, Lcom/android/server/input/InputManagerService;->SetBackOffEventToRIL(IZ)V

    goto :goto_2
.end method

.method public enablePatialScreen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "/sys/class/sec/tsp2/cmd"

    const-string/jumbo v1, "partial_screen_enable,1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "/sys/class/sec/tsp2/cmd"

    const-string/jumbo v1, "partial_screen_enable,0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-object v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    monitor-exit v3

    return-object v1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getInboundQueueLength()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeGetInboundQueueLength(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v4

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 5

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getKeyCodeState(III)I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    new-instance v1, Lcom/android/server/input/InputManagerService$10;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    aget-object v1, v0, v4

    if-nez v1, :cond_1

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v5

    if-nez v2, :cond_0

    return-object v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/hardware/input/KeyboardLayout;

    new-instance v4, Lcom/android/server/input/InputManagerService$11;

    invoke-direct {v4, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, v2, v4}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    aget-object v4, v3, v7

    if-nez v4, :cond_1

    const-string/jumbo v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v4, v3, v7

    return-object v4
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/input/InputManagerService$9;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int v0, v6, v9

    new-array v8, v0, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    add-int v1, v6, v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    aput-object v0, v8, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method public getScanCodeState(III)I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSmartHallFlipState()I
    .locals 1

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mLastSmartHallFlipState:I

    return v0
.end method

.method public getSwitchState(III)I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 6

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .locals 3

    const-string/jumbo v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public isShowHoveringPointer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    return v0
.end method

.method public monitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    return-void
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "inputChannelName must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.permission.MONITOR_INPUT"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can only call from system. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v3, v0, v6

    invoke-static {v4, v5, v3, v8, v7}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    aget-object v3, v0, v6

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    aget-object v3, v0, v7

    return-object v3
.end method

.method public onShellCommand(Lcom/android/server/input/InputManagerService$Shell;Ljava/lang/String;)I
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->onHelp()V

    const/4 v5, 0x1

    return v5

    :cond_0
    const-string/jumbo v5, "setlayout"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v6, "onShellCommand()"

    invoke-direct {p0, v5, v6}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v2, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v2, v0, v4, v3}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v1, v5}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7

    new-instance v0, Lcom/android/server/input/InputManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$Shell;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$Shell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {p1}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public registerMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {p1}, Landroid/view/PointerIcon;->setMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 7

    const-string/jumbo v4, "android.permission.TABLET_MODE"

    const-string/jumbo v5, "registerTabletModeChangedListener()"

    invoke-direct {p0, v4, v5}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public reloadMousePointerIcon(IIILandroid/graphics/Point;I)V
    .locals 3

    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setMousePointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    :cond_0
    return-void
.end method

.method public reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .locals 4

    const-string/jumbo v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMouseIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setMouseCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setMousePointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    :cond_0
    return v0
.end method

.method public reloadPointerIcon(II)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcon(JII)V

    return-void
.end method

.method public reloadPointerIcon(IIILandroid/graphics/Point;I)V
    .locals 3

    const-string/jumbo v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    :cond_0
    return-void
.end method

.method public reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .locals 5

    const/16 v4, 0xff

    const-string/jumbo v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHoveringSpenIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x4e36

    if-ne p2, v1, :cond_1

    invoke-static {v4, p3}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    :goto_0
    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x4e37

    if-ne p2, v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public removeHoveringSpenCustomIcon(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v3, v4}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    return-void

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeMouseCustomIcon(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setMouseCustomIcon(ILandroid/graphics/Bitmap;)I

    return-void
.end method

.method public declared-synchronized setBlockDeviceMode(ZIZLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "sBDM(): caller must be specified!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBDM(): isSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isForce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "sBDM(): skip duplicated request!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "sBDM(): skip duplicated request!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetBlockDevice(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "sBDM(): requested caller not exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_a
    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "sBDM(): requested caller not exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    not-int v1, p2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetBlockDevice(JI)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public setCoverVerify(I)V
    .locals 5

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCoverVerify = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->isKeyboardCover(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetCoverHeight(JI)V

    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyboardheight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCoverVerify(JI)V

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentCoverType:I

    :cond_1
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v2, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setCustomHoverIcon(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {p1, v1, v2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetHoverIcon(JLandroid/view/PointerIcon;)V

    return-void
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    return-void
.end method

.method public setEnableTSP(IZ)Z
    .locals 3

    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "spay_enable,1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "persist.service.tspcmd.spay"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "spay_enable,0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "persist.service.tspcmd.spay"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableTSP cmdtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setFlipCoverTouchEnabled(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFlipCoverTouchEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    :try_start_3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    new-instance v2, Lcom/android/server/input/InputManagerService$InputFilterHost;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$InputFilterHost;)V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_1
    :try_start_5
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v4, v5, v2}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    return-void
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v2, "setKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "imeInfo must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    return-void
.end method

.method public setLedState(Z)I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetLedState(JZ)I

    move-result v0

    return v0
.end method

.method public setMonitorChannelFilter(Landroid/view/InputChannel;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMonitorChannelFilter(JLandroid/view/InputChannel;I)V

    return-void
.end method

.method public setMotionManagerCallbacks(Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mMotionManagerCallbacks:Lcom/android/server/input/InputManagerService$MotionManagerCallbacks;

    return-void
.end method

.method public setPointerIconType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    return-void
.end method

.method public setStartedShutdown(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetStartedShutdown(JZ)V

    :cond_0
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 4

    const-string/jumbo v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz p2, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mUnVerifiedCoverAttachCallbacks:Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;

    return-void
.end method

.method public declared-synchronized setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "WAKEKEY"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packagename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p1, :cond_0

    const-string/jumbo v8, "null"

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v8, "empty"

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v8, "pm is null"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    array-length v9, v5

    if-nez v9, :cond_5

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v5, :cond_4

    const-string/jumbo v8, "null"

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    const-string/jumbo v8, "empty"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_4
    array-length v9, v5

    :goto_2
    if-ge v8, v9, :cond_6

    aget-object v4, v5, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packagename:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eqz v10, :cond_7

    const/4 v7, 0x1

    :cond_6
    :goto_3
    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo v8, "appinfo is null"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_1
    move-exception v2

    :try_start_7
    const-string/jumbo v8, "NameNotFoundException is occured"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    if-eqz v7, :cond_b

    :try_start_8
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    if-nez v8, :cond_a

    new-instance v8, Lcom/android/server/input/InputManagerService$ControlWakeKey;

    invoke-direct {v8}, Lcom/android/server/input/InputManagerService$ControlWakeKey;-><init>()V

    iput-object v8, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    :try_start_9
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    invoke-virtual {v8, p2, p3}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->setWakeKeyDynamically(ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :cond_b
    :try_start_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uidhaspackage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", appinfo.privateFlags is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_9

    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "only system app can use this method, but "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not system app"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    return-void
.end method

.method public start()V
    .locals 5

    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerCoverTestModeSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowFingerHoveringSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowFingerHoveringPointerSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowHoveringPointerSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerGloveModeSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerKidsModeSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPenHoveringSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerSideSyncSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerSpenScreenOnSettingObserver()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateCoverTestModeFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowFingerHoveringFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateGloveModeFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateKidsModeFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePenHoveringFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSideSyncFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSpenScreenOnFromSettings()V

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.service.tspcmd.spay"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->setEnableTSP(IZ)Z

    :cond_0
    return-void
.end method

.method public systemRunning()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v2}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutNotificationPending:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "InputManager"

    const-string/jumbo v3, "Showing pending notification of missing keyboard layout"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mAddingGamepadIntentPending:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.input.GAMEPAD_DEVICE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .locals 2

    const-string/jumbo v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x7

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    return-void
.end method

.method public updateAccessibilityLargePointerFromSettings()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_large_pointer_icon"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-static {v1}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public updateCoverTestModeFromSettings()V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getCoverTestModeSetting(I)I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetCoverTestModeType(JI)V

    return-void
.end method

.method public updateGloveModeFromSettings()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getGloveModeSetting(Z)Z

    move-result v0

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetGloveMode(JZ)V

    return-void
.end method

.method public updateKidsModeFromSettings()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getKidsModeSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetKidsMode(JZ)V

    return-void
.end method

.method public updatePenHoveringFromSettings()V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->getPenHoveringSetting(Z)Z

    move-result v1

    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Lcom/android/server/input/InputManagerService;->nativeSetPenHovering(JZ)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v4, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_3

    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v4, v5, v3}, Lcom/android/server/input/InputManagerService;->nativeSetShowHovering(JZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    goto :goto_1
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    return-void
.end method

.method public updateShowFingerHoveringFromSettings()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowFingerHoveringSetting(Z)Z

    move-result v0

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowFingerHovering(JZ)V

    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowHoveringSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowHovering(JZ)V

    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    return-void
.end method

.method public updateSideSyncFromSettings()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getSideSyncFromSetting(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->previousStatus:Z

    if-eqz v1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "all"

    invoke-direct {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->setSuspendibleDevices(Ljava/lang/String;Z)Z

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->previousStatus:Z

    return-void
.end method

.method public updateSpenScreenOnFromSettings()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getSpenScreenOnFromSettings(Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->previousAopStatus:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setAopMode(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->previousAopStatus:Z

    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 8

    array-length v0, p2

    if-lt p3, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v7, p0, p1, p4, v0}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p4, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v1

    monitor-enter v7

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v5, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    return-void

    :catch_0
    move-exception v6

    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method
