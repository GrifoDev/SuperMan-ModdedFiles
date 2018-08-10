.class public Landroid/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "HapticFeedbackConstants.java"


# static fields
.field public static final CALENDAR_DATE:I = 0x5

.field public static final CLOCK_TICK:I = 0x4

.field public static final CONTEXT_CLICK:I = 0x6

.field public static final FLAG_IGNORE_GLOBAL_SETTING:I = 0x2

.field public static final FLAG_IGNORE_VIEW_SETTING:I = 0x1

.field public static final KEYBOARD_TAP:I = 0x3

.field public static final LONG_PRESS:I = 0x0

.field private static final NEW_VIBRATION_MAX_INDEX:I = 0xc382

.field private static final NEW_VIBRATION_MIN_INDEX:I = 0xc369

.field public static final SAFE_MODE_DISABLED:I = 0x2710

.field public static final SAFE_MODE_ENABLED:I = 0x2711

.field private static final SAMSUNG_VIBRATION_START:I = 0xc350

.field public static final SEM_VIBRATION_COMMON_A:I = 0xc369

.field public static final SEM_VIBRATION_COMMON_B:I = 0xc36a

.field public static final SEM_VIBRATION_COMMON_C:I = 0xc36b

.field public static final SEM_VIBRATION_COMMON_D:I = 0xc36c

.field public static final SEM_VIBRATION_COMMON_E:I = 0xc36d

.field public static final SEM_VIBRATION_COMMON_F:I = 0xc36e

.field public static final SEM_VIBRATION_COMMON_G:I = 0xc36f

.field public static final SEM_VIBRATION_COMMON_H:I = 0xc370

.field public static final SEM_VIBRATION_COMMON_I:I = 0xc371

.field public static final SEM_VIBRATION_COMMON_J:I = 0xc372

.field public static final SEM_VIBRATION_COMMON_K:I = 0xc373

.field public static final SEM_VIBRATION_COMMON_L:I = 0xc374

.field public static final SEM_VIBRATION_COMMON_M:I = 0xc375

.field public static final SEM_VIBRATION_COMMON_N:I = 0xc376

.field public static final SEM_VIBRATION_COMMON_O:I = 0xc377

.field public static final SEM_VIBRATION_COMMON_P:I = 0xc378

.field public static final SEM_VIBRATION_COMMON_Q:I = 0xc379

.field public static final SEM_VIBRATION_COMMON_R:I = 0xc37a

.field public static final SEM_VIBRATION_COMMON_S:I = 0xc37b

.field public static final SEM_VIBRATION_COMMON_T:I = 0xc37c

.field public static final SEM_VIBRATION_COMMON_U:I = 0xc37d

.field public static final SEM_VIBRATION_COMMON_V:I = 0xc37e

.field public static final SEM_VIBRATION_COMMON_W:I = 0xc37f

.field public static final SEM_VIBRATION_COMMON_X:I = 0xc380

.field public static final SEM_VIBRATION_COMMON_Y:I = 0xc381

.field public static final SEM_VIBRATION_COMMON_Z:I = 0xc382

.field public static final VIRTUAL_KEY:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidatedVibeIndex(I)Z
    .locals 1

    const v0, 0xc369

    if-lt p0, v0, :cond_0

    const v0, 0xc382

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
