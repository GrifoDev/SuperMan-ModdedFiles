.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field protected SHORTCUT_LEFT:I

.field protected SHORTCUT_RIGHT:I

.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field protected mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field protected mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field protected mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentMobileKeyboard:I

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field protected mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mHelpTextBounceAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field protected mIndicationArea:Landroid/widget/LinearLayout;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mIndicationText:Landroid/widget/TextView;

.field protected mIsSecure:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field protected mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field protected mLeftIsVoiceAssist:Z

.field protected mLeftPreview:Landroid/view/View;

.field protected mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field mMobileKeyboard:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mPreviewContainer:Landroid/view/ViewGroup;

.field protected mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field protected mPreviews:[Landroid/view/View;

.field private mPrewarmBound:Z

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field protected mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field protected mRightPreview:Landroid/view/View;

.field private mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mSineIn33:Landroid/view/animation/PathInterpolator;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUserSetupComplete:Z

.field protected mUsimCarrierText:Landroid/widget/TextView;

.field private mUsimTextArea:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isSuccessfulLaunch(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->insertLog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/keyguard/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const v6, 0x3f547ae1    # 0.83f

    const v5, 0x3e2e147b    # 0.17f

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSineIn33:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSineOut33:Landroid/view/animation/PathInterpolator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCurrentMobileKeyboard:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleTrustCircleClick()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-static {v0, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f0f04bb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    return-void
.end method

.method private initAccessibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    return-void
.end method

.method private insertLog(Ljava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "LSLC"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, p1, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " started"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v0, 0x5

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v5, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v5, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v6, "Can\'t get userId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v7
.end method

.method private isPhoneVisible()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isSuccessfulLaunch(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private launchVoiceAssist()V
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0
.end method

.method private setUsimTextAreaVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public bindCameraPrewarmService()V
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v2, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "android.media.still_image_camera_preview_service"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const v8, 0x4000001

    invoke-virtual {v5, v3, v6, v8, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PhoneStatusBar/KeyguardBottomAreaView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to bind to prewarm service package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " class="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected canLaunchVoiceAssist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBottomAreaMaxHeight()I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d036b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getEmergencyButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    return-object v0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method public getLockSecureIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUSimCarrierTextView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasCameraShortcutForRight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPhoneShortcutForLeft()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasPhoneShortcutForRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected inflateCameraPreview()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->hasCameraShortcutForRight()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightPreview()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "getCameraIntent() preview failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3}, Lcom/android/keyguard/EmergencyButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v5

    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/EmergencyButton;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    aget v3, v0, v5

    if-lt v1, v3, :cond_3

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Lcom/android/keyguard/EmergencyButton;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_3

    aget v3, v0, v6

    if-lt v2, v3, :cond_3

    aget v3, v0, v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Lcom/android/keyguard/EmergencyButton;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_3

    return v6

    :cond_3
    return v5
.end method

.method public launchCamera(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v2, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v3, "launch insecure Camera - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "isSecure"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v2, v0, v4, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchLeftAffordance()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchVoiceAssist()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    goto :goto_0
.end method

.method protected launchPhone()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    const-string/jumbo v1, "CALL"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardCurrentlySecure()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->insertLog(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public launchRightAffordance()V
    .locals 1

    const-string/jumbo v0, "lockscreen_affordance"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "lockscreen_affordance"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCurrentMobileKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCurrentMobileKeyboard:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f130143

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    new-array v1, v2, [Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    new-array v1, v2, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    const v1, 0x7f130144

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    const v1, 0x7f130145

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const v1, 0x7f130146

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const v1, 0x7f130142

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->watchForCameraPolicyChanges()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipChildren(Z)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipToPadding(Z)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    const v1, 0x7f130148

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    const v1, 0x7f130149

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    const v1, 0x7f13014b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    const v1, 0x7f13014c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setRight(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_2

    const v1, 0x7f13014d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f1301dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUsimCarrierText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_PLMN:Z

    if-eqz v1, :cond_3

    const v1, 0x7f13014e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "white_lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateChildViewsLook()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setFocusable(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    :cond_0
    return-void
.end method

.method public resolveCameraIntent()Landroid/content/pm/ResolveInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/high16 v3, 0x10000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-void
.end method

.method public setAssistManager(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void
.end method

.method public setIndicationAreaAnimation(ZZ)V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    return-void
.end method

.method public showHelpTextBounceAnimation()V
    .locals 11

    const/4 v10, 0x2

    const v9, 0x3f733333    # 0.95f

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v8, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v8, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    const-wide/16 v0, 0x30

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    const-wide/16 v2, 0x30

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public unbindCameraPrewarmService(Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "Error sending camera fired message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateCameraVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method

.method protected updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    const/high16 v7, 0x10000

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v0

    const-string/jumbo v4, "PhoneStatusBar/KeyguardBottomAreaView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraVisibility isCameraDisabledByDpm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public updateChildViewsLook()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->updateButtonOuterlineColor(Landroid/widget/TextView;)V

    return-void
.end method

.method public updateLeftAffordance()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftPreview()V

    return-void
.end method

.method protected updateLeftAffordanceIcon()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->canLaunchVoiceAssist()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v4, :cond_1

    const v2, 0x7f020194

    const v0, 0x7f0f02a0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v5, v4, v5

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isPhoneVisible()Z

    move-result v4

    and-int/2addr v3, v4

    const v2, 0x7f0201a0

    const v0, 0x7f0f05cb

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    goto :goto_1
.end method

.method protected updateLeftPreview()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "updateLeftPreview removeView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "mLeftAffordanceView preview null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected updateRightPreview()V
    .locals 0

    return-void
.end method
