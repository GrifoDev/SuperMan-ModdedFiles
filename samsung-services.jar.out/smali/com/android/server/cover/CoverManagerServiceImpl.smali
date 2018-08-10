.class Lcom/android/server/cover/CoverManagerServiceImpl;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;
.implements Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerServiceImpl$1;,
        Lcom/android/server/cover/CoverManagerServiceImpl$2;,
        Lcom/android/server/cover/CoverManagerServiceImpl$3;,
        Lcom/android/server/cover/CoverManagerServiceImpl$4;,
        Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;,
        Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;
    }
.end annotation


# static fields
.field private static final COVER_ABSENT:I = -0x1

.field private static final COVER_ATTACH:I = 0x1

.field private static final COVER_CLOSED:I = 0x0

.field private static final COVER_CLOSE_COUNT:Ljava/lang/String; = "cover_close_count"

.field private static final COVER_DETACH:I = 0x0

.field private static final COVER_KEYS_ATTACH:[Ljava/lang/String;

.field private static final COVER_KEYS_DETACH:[Ljava/lang/String;

.field private static final COVER_OPEN:I = 0x1

.field private static final COVER_OPEN_COUNT:Ljava/lang/String; = "cover_open_count"

.field private static final MSG_COVER_EVENT_FINISHED:I = 0x12d

.field private static final MSG_UPDATE_WINDOW_SIZE:I = 0x12c

.field private static final PRIVACY_POPUP_SETTINGS_DB:Ljava/lang/String; = "cover_privacy_popup_settings_db"

.field private static final SERIAL_NUMBER_CUT_LENGTH:I = 0x4

.field private static final SERVICE_VERSION:I = 0x10b0000

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationStartCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

.field private final mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

.field private final mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

.field private final mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

.field private final mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverStateLock:Ljava/lang/Object;

.field private final mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

.field private final mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisplaySizeValue:Ljava/lang/String;

.field private mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

.field private final mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

.field private mHyperlinkDialog:Landroid/app/AlertDialog;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mLedCoverController:Lcom/android/server/cover/LedCoverController;

.field private mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

.field private mPackageName:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPrivacyDialog:Landroid/app/AlertDialog;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mSetupWizardObserver:Landroid/database/ContentObserver;

.field private mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/StateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/cover/CoverManagerServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverHideAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/cover/CoverManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverManagerServiceImpl;ZZZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/input/InputManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->createAgreementDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/view/ContextThemeWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->createHyperLinkDialog(Landroid/view/ContextThemeWrapper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverAttachHQMLoggingInformation()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverWindowSize()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CVAT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CVCL"

    aput-object v1, v0, v4

    const-string/jumbo v1, "CVTP"

    aput-object v1, v0, v5

    const-string/jumbo v1, "CVSN"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->COVER_KEYS_ATTACH:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "CVDT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CVSN"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->COVER_KEYS_DETACH:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$1;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl$2;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl$3;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSetupWizardObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$4;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->isSupportCoverLoggingPopupFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cover_privacy_popup_settings_db"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cover_privacy_popup_settings_db"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Looper;Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerServiceImpl$5;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$5;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/server/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    new-instance v0, Lcom/android/server/cover/CoverServiceManager;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/cover/CoverServiceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    new-instance v0, Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    new-instance v0, Lcom/android/server/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    new-instance v0, Lcom/android/server/cover/CoverHideAnimator;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    new-instance v0, Lcom/android/server/cover/CoverManagerWhiteLists;

    invoke-direct {v0}, Lcom/android/server/cover/CoverManagerWhiteLists;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    new-instance v0, Lcom/android/server/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/cover/CoverManagerServiceImpl$6;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$6;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    return-void
.end method

.method private checkNeedThread([BII)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    .locals 2

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    return-object v0
.end method

.method private createAgreementDialog()V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const v5, 0x1030132

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109004a

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->getAlertDialog(Landroid/view/View;Landroid/view/ContextThemeWrapper;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private createHyperLinkDialog(Landroid/view/ContextThemeWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x4e20

    new-array v1, v6, [C

    invoke-virtual {v3, v1}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/server/cover/CoverManagerServiceImpl$16;

    invoke-direct {v6, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$16;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    const v7, 0x1040240

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/server/cover/CoverManagerServiceImpl$17;

    invoke-direct {v6, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$17;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_1
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_2
    if-eqz v7, :cond_5

    :try_start_5
    throw v7

    :catch_3
    move-exception v8

    if-nez v7, :cond_4

    move-object v7, v8

    goto :goto_2

    :cond_4
    if-eq v7, v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method private getAlertDialog(Landroid/view/View;Landroid/view/ContextThemeWrapper;)Landroid/app/AlertDialog$Builder;
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const v4, 0x104023e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const v3, 0x1020415

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v3, Lcom/android/server/cover/CoverManagerServiceImpl$11;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/cover/CoverManagerServiceImpl$11;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Ljava/lang/String;Landroid/view/ContextThemeWrapper;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020416

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v3, Lcom/android/server/cover/CoverManagerServiceImpl$12;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/cover/CoverManagerServiceImpl$12;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Ljava/lang/String;Landroid/view/ContextThemeWrapper;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/server/cover/CoverManagerServiceImpl$13;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$13;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    const v4, 0x104023c

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/server/cover/CoverManagerServiceImpl$14;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$14;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    const v4, 0x1040243

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/server/cover/CoverManagerServiceImpl$15;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$15;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private getCoverAttachStateFromInputManager()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x1a

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    if-nez v2, :cond_1

    return v7

    :cond_1
    return v6

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCoverAttachStateFromInputManager : Can\'t get cover attach state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_2
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCoverAttachStateFromInputManager : InputManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCoverStateInternal : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method private getCoverSwitchStateFromInputManager()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x15

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    if-nez v2, :cond_1

    return v7

    :cond_1
    return v6

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCoverSwitchStateFromInputManager : Can\'t get cover switch state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getCoverSwitchStateFromInputManager : InputManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private getInputManagerService()Lcom/android/server/input/InputManagerService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService;

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object v1
.end method

.method private getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private initialize()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/cover/CoverManagerServiceImpl$7;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportWindowCover()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "display_size_forced"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "display_size_forced"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDisplaySizeValue:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->isSupportCoverLoggingPopupFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverAttachStateFromInputManager()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    invoke-direct {p0, v0, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initializeCoverController(ZII)V
    .locals 3

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/cover/LedCoverController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZII)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cover/GenericCoverServiceController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cover/GenericCoverServiceController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private initializeLedCoverController()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->getSupportNfcLedCoverLevel()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeLedCoverController : unsupported NfcLedCover level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private isThemeCover(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isThemeCover : it is theme cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private notifyCoverAttachStateChangedInternal(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method private notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V
    .locals 4

    const/16 v3, 0xff

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v1}, Lcom/android/server/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v1, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1, p1}, Lcom/android/server/cover/CoverTestModeUtils;->getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p2, v0

    :cond_2
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->isThemeCover(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v2

    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private printCoverDebugModeGuide(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "Cover Test Mode options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  [cmd] [type]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  cmd may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    on: cover attached"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    off: cover detached"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  type may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    f[lip cover]: flip cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    s[view cover]: sview cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    c[lear cover]: clear cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    l[ed cover]: led cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    n[eon cover]: neon cover"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v3, "get_x_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "get_y_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .locals 4

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListenerCallbackInternal : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private sendContextServiceLogForSerialNumberLocked()V
    .locals 5

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/cover/ContextLoggingManager;->sendContextServiceLogForSerialNumber(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cover serial number is null or too short, wtf? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendCoverAttachHQMLoggingInformation()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->COVER_KEYS_ATTACH:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->COVER_KEYS_ATTACH:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v1, v3}, Lcom/android/server/cover/CoverManagerUtils;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/cover/CoverManagerUtils;->sendCoverAttachInformationToHQM(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v6}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/cover/Feature;->isMobileKeyboardFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xa

    if-ne v4, v6, :cond_3

    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    :cond_3
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v6

    invoke-direct {p0, v0, v4, v6}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeCoverController(ZII)V

    if-eqz v0, :cond_9

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v6, v4, v9}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v7

    invoke-virtual {v6, v8, v4, v7}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v6}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, v3, p1, v8, v9}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    :goto_1
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v6}, Lcom/android/server/cover/CoverManagerUtils;->isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->isSupportCoverLoggingPopupFeature()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/cover/CoverManagerUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/cover/CoverManagerUtils;->isAgreementNotGranted(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->createAgreementDialog()V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendContextServiceLogForSerialNumberLocked()V

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverInformationToAgentLocked(Z)V

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/cover/Feature;->isRuggedizedFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Lcom/android/server/cover/CoverManagerUtils;->showRuggedizedPopup(Landroid/content/Context;ZZ)V

    :cond_6
    sget-object v6, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", switchState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v6, v3}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v8, p1, v8, v9}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v7

    invoke-virtual {v6, v9, v4, v7}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v6, v4}, Lcom/android/server/cover/CoverServiceManager;->unbindCoverService(I)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v6, v8}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-static {v6}, Lcom/android/server/cover/CoverManagerUtils;->isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->isSupportCoverLoggingPopupFeature()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHyperlinkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_a
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPrivacyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_b
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/server/cover/CoverManagerServiceImpl;->COVER_KEYS_DETACH:[Ljava/lang/String;

    sget-object v7, Lcom/android/server/cover/CoverManagerServiceImpl;->COVER_KEYS_DETACH:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v6, v5, v7}, Lcom/android/server/cover/CoverManagerUtils;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/cover/CoverManagerUtils;->sendCoverAttachInformationToHQM(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cover_privacy_popup_settings_db"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cover_open_count"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cover_close_count"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v6, :cond_d

    iput-object v10, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    goto/16 :goto_2

    :cond_d
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v6, :cond_e

    iput-object v10, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v6, :cond_5

    iput-object v10, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    goto/16 :goto_2
.end method

.method private sendCoverInformationToAgentLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/cover/CoverManagerUtils;->sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-ne p1, v3, :cond_1

    sget-boolean v3, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendCoverSwitchStateLocked : return false because switch state is same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendCoverSwitchStateLocked : return false because type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverHideAnimator;->cancelHideAnimation()V

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3}, Lcom/android/server/cover/StateNotifier;->isLcdOffByDisabledByApp()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    :cond_3
    if-eqz p4, :cond_5

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/cover/CoverManagerServiceImpl$8;

    invoke-direct {v4, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$8;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", color = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", widthPixel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", heightPixel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v2, v7}, Lcom/android/server/cover/StateNotifier;->updatePowerState(IZ)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/cover/StateNotifier;->updatePowerState(IZ)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/cover/CoverManagerServiceImpl$9;

    invoke-direct {v4, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$9;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private sendTouchRegion([BII)V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendTouchRegion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendTouchRegion : coverShape is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendTouchRegion : width is 0 or height is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->checkNeedThread([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;-><init>([BIILcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;)V

    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->start()V

    :goto_0
    return-void

    :cond_3
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendTouchRegion : we don\'t need to start thread because there is no valid value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterCallbackInternal(Landroid/os/IBinder;Z)Z
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 3

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverAttachState : attach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverVerifier;->updateCoverAttachState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCoverAttachState : Returning attach state - it is same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCoverStateToWindowManagerLocked : wms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverSwitchState : switchState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isBoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerUtils;->needsCPUBoostCover(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportDetectCover()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->updateCoverVerification()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverSwitchState : return because cover is not attached"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->updateCoverState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverSwitchState : cover is opened, so wake up"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x6

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/PowerManager;->semWakeUp(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit v2

    return-void
.end method

.method private updateCoverWindowSize()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverWindowSize: no need to update cover window for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverWindowSize: updating cover window for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "disableCoverManager : caller is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-nez v1, :cond_3

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/cover/CoverManagerServiceImpl$10;

    invoke-direct {v4, p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl$10;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Z)V

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disableLcdOffByCover : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_2
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v3, :cond_8

    array-length v3, p3

    if-lez v3, :cond_8

    aget-object v0, p3, v5

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    array-length v3, p3

    if-le v3, v6, :cond_6

    aget-object v2, p3, v6

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v3, v5}, Lcom/android/server/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TEST MODE: FLIP_COVER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v3, v6}, Lcom/android/server/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TEST MODE: SVIEW_COVER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v3, v8}, Lcom/android/server/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TEST MODE: CLEAR_COVER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v3, v7}, Lcom/android/server/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TEST MODE: LED_COVER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TEST MODE: NEON_COVER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverTestModeUtils;->setTestModeToSetting(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TEST MODE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/cover/CoverManagerServiceImpl;->printCoverDebugModeGuide(Ljava/io/PrintWriter;)V

    return-void

    :cond_8
    const-string/jumbo v3, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, " Current Cover state"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/GenericCoverServiceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_b
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCoverStateForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCoverSwitchState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCoverSwitchState : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->getRealCoverSwitchState()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, 0x10b0000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverAttachStateChanged : return because of test mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifyCoverAttachStateChangedInternal(Z)V

    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v4, 0x12d

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p3}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : return because CoverManager is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p3, :cond_4

    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : so request coverEventFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void

    :cond_5
    const/4 p3, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Block cover event because factory app is running."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged : return because of test mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, p4}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAppCovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager;->isBindingCoverService()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager;->onCoverAppStateChanged(Z)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->onCoverAppStateChanged(Z)I

    move-result v0

    return v0
.end method

.method public onLcdOffByCoverEnabled()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    :cond_1
    return-void
.end method

.method onSwitchUser(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/cover/CoverServiceManager;->unbindActiveCoverService(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/cover/CoverServiceManager;->switchCoverService(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onUserStopped(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStopped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onUserUnlocked(I)V
    .locals 4

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->readTouchChannelCount()Landroid/graphics/Point;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readTouchChannelCountForExternal : caller is invalid, callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallbackForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/GenericCoverServiceController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    :cond_2
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestCoverAuthentication : caller is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCoverAuthentication : whenNanos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public sendDataToCover(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    :cond_2
    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendStateDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_6
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/LedCoverController;->sendPowerKeyToCover()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0}, Lcom/android/server/cover/GenericCoverServiceController;->sendPowerKeyToCover()V

    :cond_3
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSystemEvent : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendTouchRegion([BII)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTouchRegionForExternal : caller is invalid, callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverPackage : package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/cover/SmartCoverAppController;->startCoverService(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFotaInProgress : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFotaInProgress : inProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method systemRunning()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initialize()V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/android/server/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallbackForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v2, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v2, p1}, Lcom/android/server/cover/GenericCoverServiceController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    :cond_2
    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
