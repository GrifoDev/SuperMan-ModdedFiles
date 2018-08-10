.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$1;,
        Lcom/android/keyguard/KeyguardSecurityContainer$2;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;,
        Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFactoryResetProtectionType:I

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsNotiClickedOnShadeLocked:Z

.field private mIsVerifyUnlockOnly:Z

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mRemainingBeforeWipe:I

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_10
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_10

    :catch_1
    move-exception v1

    goto :goto_f

    :catch_2
    move-exception v1

    goto :goto_e

    :catch_3
    move-exception v1

    goto :goto_d

    :catch_4
    move-exception v1

    goto :goto_c

    :catch_5
    move-exception v1

    goto :goto_b

    :catch_6
    move-exception v1

    goto :goto_a

    :catch_7
    move-exception v1

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_8

    :catch_9
    move-exception v1

    goto :goto_7

    :catch_a
    move-exception v1

    goto :goto_6

    :catch_b
    move-exception v1

    goto/16 :goto_5

    :catch_c
    move-exception v1

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_3

    :catch_e
    move-exception v1

    goto/16 :goto_2

    :catch_f
    move-exception v1

    goto/16 :goto_1

    :catch_10
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSecurityContainer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFactoryResetProtectionType:I

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateFactoryResetProtectionType()V

    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method private doWipeOutIfMaxFailedAttemptsSinceBoot()V
    .locals 7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRecoveryLock()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    :goto_0
    const-string/jumbo v4, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , failedAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_0

    if-lt v1, v2, :cond_0

    const-string/jumbo v4, "KeyguardSecurityView"

    const-string/jumbo v5, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v2

    goto :goto_0
.end method

.method private getSecFailedAttemptsBeforeWipe(ZI)I
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    if-lez v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 11

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string/jumbo v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;)V

    move-object v6, v5

    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    :cond_1
    return-object v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const v0, 0x7f0a0267

    return v0

    :pswitch_2
    const v0, 0x7f0a028a

    return v0

    :pswitch_3
    const v0, 0x7f0a028b

    return v0

    :pswitch_4
    const v0, 0x7f0a0289

    return v0

    :pswitch_5
    const v0, 0x7f0a02a8

    return v0

    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a029f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a02a9

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0a029e

    return v0

    :pswitch_8
    const v0, 0x7f0a028c

    return v0

    :pswitch_9
    const v0, 0x7f0a02c4

    return v0

    :pswitch_a
    const v0, 0x7f0a0260

    return v0

    :pswitch_b
    const v0, 0x7f0a0261

    return v0

    :pswitch_c
    const v0, 0x7f0a026f

    return v0

    :pswitch_d
    const v0, 0x7f0a0292

    return v0

    :pswitch_e
    const v0, 0x7f0a024f

    return v0

    :pswitch_f
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->isUCMBasedSmartcard()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a02c5

    return v0

    :cond_1
    const v0, 0x7f0a02bf

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method private isUCMBasedSmartcard()Z
    .locals 3

    const-string/jumbo v1, "persist.keyguard.ucs"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private reportFailedUnlockAttempt(II)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v2

    if-lez v2, :cond_5

    sub-int v6, v2, v1

    :goto_0
    iput v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateStrongAuthStatus(II)V

    const-string/jumbo v6, "KeyguardSecurityView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportFailedUnlockAttempt   \n failedAttemptsBeforeWipe: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n mRemainingBeforeWipe  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n failedAttempts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-ge v6, v11, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_6

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    :cond_0
    :goto_1
    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-lez v6, :cond_7

    if-nez v3, :cond_1

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, v1, v6, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    const-class v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v6}, Lcom/android/systemui/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-eq v6, v9, :cond_2

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-ne v6, v11, :cond_9

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, p1, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningWipeOutDialog(II)V

    :cond_3
    :goto_3
    if-lez p2, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_4
    return-void

    :cond_5
    const v6, 0x7fffffff

    goto/16 :goto_0

    :cond_6
    const/16 v6, -0x2710

    if-eq v0, v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "KeyguardSecurityView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Too many unlock attempts; user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " will be wiped!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v10, v0}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "KeyguardSecurityView"

    const-string/jumbo v7, "Device will display the recovery lockscreen"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, p1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v6, "KeyguardSecurityView"

    const-string/jumbo v7, "Too many unlock attempts; device will be wiped !"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    goto/16 :goto_2

    :cond_9
    if-eqz v3, :cond_3

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, v1, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningAtAutoWipeDialog(II)V

    goto :goto_3
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    if-ne p1, v4, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f120640

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f120641

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120642

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f1204f0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f1204ef

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$Lambda$gCYnFNxwBx_Lrb7P1mMbNnr0xX8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$gCYnFNxwBx_Lrb7P1mMbNnr0xX8;-><init>(Ljava/lang/Object;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "KeyguardSecurityView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showSecurityScreen("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v4

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v9}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_1
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v9, :cond_2

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v9}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_2
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v7, :cond_7

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0, v12}, Lcom/android/keyguard/KeyguardSecurityContainer;->setFitsSystemWindows(Z)V

    :goto_1
    sget-boolean v9, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v9, v12, :cond_9

    const/4 v3, 0x1

    :goto_2
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v3, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6, v8, v8, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v6}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_6

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v8

    :cond_6
    invoke-interface {v9, p1, v8}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v8, v8, v8, v8}, Lcom/android/keyguard/KeyguardSecurityContainer;->setPadding(IIII)V

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecurityContainer;->setFitsSystemWindows(Z)V

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050158

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3
.end method

.method private showWarningAtAutoWipeDialog(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showWarningWipeOutDialog(II)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFactoryResetProtectionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFactoryResetProtectionType()V
    .locals 4

    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFactoryResetProtectionType:I

    :cond_0
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFactoryResetProtectionType( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFactoryResetProtectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4

    instance-of v1, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStrongAuthStatus(II)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v6, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v6, :cond_5

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x100

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v6, :cond_6

    const/4 v0, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v6, :cond_7

    const/4 v2, 0x1

    :goto_3
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    if-lez p2, :cond_3

    const/16 v4, 0xa

    if-lt p2, v4, :cond_8

    iget v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    iget v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-gt v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_9
    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_a
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    goto :goto_4
.end method


# virtual methods
.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const v0, 0x7f0d006e

    return v0

    :pswitch_2
    const v0, 0x7f0d0086

    return v0

    :pswitch_3
    const v0, 0x7f0d0087

    return v0

    :pswitch_4
    const v0, 0x7f0d0085

    return v0

    :pswitch_5
    const v0, 0x7f0d008a

    return v0

    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d008c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d008b

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0d0089

    return v0

    :pswitch_8
    const v0, 0x7f0d0088

    return v0

    :pswitch_9
    const v0, 0x7f0d0098

    return v0

    :pswitch_a
    const v0, 0x7f0d0069

    return v0

    :pswitch_b
    const v0, 0x7f0d006a

    return v0

    :pswitch_c
    const v0, 0x7f0d0073

    return v0

    :pswitch_d
    const v0, 0x7f0d0084

    return v0

    :pswitch_e
    const v0, 0x7f0d005e

    return v0

    :pswitch_f
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->isUCMBasedSmartcard()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d0099

    return v0

    :cond_1
    const v0, 0x7f0d0094

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardSecurityContainer_10570(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reset()V

    return-void
.end method

.method public needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v5, v5, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a056e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->doWipeOutIfMaxFailedAttemptsSinceBoot()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public setNotiClickedOnShadeLocked(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNotiClickedOnShadeLocked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(ZI)Z
    .locals 8

    const-string/jumbo v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNextSecurityScreenOrFinish("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v5, v4, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    if-eqz p1, :cond_1

    const-string/jumbo v5, "102"

    const-string/jumbo v6, "1032"

    const-string/jumbo v7, "1"

    invoke-static {v5, v6, v7}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInvokeSessionClose()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestSessionClose(I)V

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v5, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v3, :cond_5

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad security screen "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", fail safe"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v4, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v5, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v5, :cond_9

    xor-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v2, :cond_b

    :cond_a
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Strong auth required, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    :cond_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
