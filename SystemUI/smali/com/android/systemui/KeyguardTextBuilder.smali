.class public Lcom/android/systemui/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KeyguardTextBuilder$Biometric;,
        Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;,
        Lcom/android/systemui/KeyguardTextBuilder$PromptReason;,
        Lcom/android/systemui/KeyguardTextBuilder$Security;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

.field private static final synthetic -com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

.field private static sInstance:Lcom/android/systemui/KeyguardTextBuilder;


# instance fields
.field private m2StepVerification:Z

.field private mAddRemainingAttempt:I

.field private mBiometricType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDismissActionType:Ljava/lang/String;

.field private mIsFace:Z

.field private mIsFingerprint:Z

.field private mIsIb:Z

.field private mIsIris:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPromptReasonType:Ljava/lang/String;

.field private mSecurityType:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

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

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_10
    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    sget-boolean v0, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tablet"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method

.method private getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/high16 v5, 0x7f100000

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 1

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/systemui/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    :cond_0
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    return-object v0
.end method

.method private updateCurrentState(Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    const/4 v2, 0x0

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/systemui/Rune;->isFingerprintSensorRear()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v5, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    if-nez v1, :cond_6

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-nez v1, :cond_7

    and-int/lit8 v4, v0, 0x10

    const/16 v7, 0x10

    if-ne v4, v7, :cond_7

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-nez v1, :cond_8

    and-int/lit16 v4, v0, 0x100

    const/16 v7, 0x100

    if-ne v4, v7, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v1, :cond_9

    and-int/lit16 v4, v0, 0x1000

    const/16 v7, 0x1000

    if-ne v4, v7, :cond_9

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez p1, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v4

    if-eqz v4, :cond_a

    xor-int/lit8 v4, v2, 0x1

    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    :cond_3
    :goto_5
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_11

    :cond_4
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    :goto_6
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDismissActionExist()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/systemui/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    :goto_7
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    :cond_5
    return-void

    :cond_6
    move v4, v6

    goto/16 :goto_0

    :cond_7
    move v4, v6

    goto/16 :goto_1

    :cond_8
    move v4, v6

    goto/16 :goto_2

    :cond_9
    move v5, v6

    goto/16 :goto_3

    :cond_a
    move v4, v6

    goto :goto_4

    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    :goto_8
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    :goto_9
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v4

    :goto_a
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v6

    :cond_c
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    goto :goto_5

    :cond_d
    move v4, v6

    goto :goto_8

    :cond_e
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v4

    :goto_b
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    goto :goto_9

    :cond_f
    move v4, v6

    goto :goto_b

    :cond_10
    move v4, v6

    goto :goto_a

    :cond_11
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_13

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_14

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_0
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto/16 :goto_7

    :cond_16
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "none"

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Dex:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v5, 0x1040294

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v2}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1206e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1206e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1206e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "none"

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "none"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "none"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find default string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getFPFailedAttemptionGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;
    .locals 6

    const v3, 0x7f120646

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f12064a

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const v3, 0x7f120649

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f120648

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f120647

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v5, 0x1040294

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-direct {p0, v8}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v4, ""

    return-object v4

    :pswitch_0
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    :goto_0
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "none"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1

    :pswitch_1
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    const-string/jumbo v0, "none"

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find prompt string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWarningAutoWipeMessage(II)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v1, ""

    const-string/jumbo v0, "none"

    const-string/jumbo v4, "none"

    if-ne p1, v8, :cond_0

    const-string/jumbo v0, "1"

    :cond_0
    if-ne p2, v8, :cond_1

    const-string/jumbo v4, "1"

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1206f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v0, v6, v8

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "KeyguardTextBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find the warning on auto wipe string id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, ""

    const-string/jumbo v3, "none"

    if-ne p2, v8, :cond_0

    const-string/jumbo v3, "1"

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find warning frp string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, ""

    const-string/jumbo v3, "none"

    if-ne p2, v8, :cond_0

    const-string/jumbo v3, "1"

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find warning reactivation string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
