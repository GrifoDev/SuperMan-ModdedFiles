.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$1;,
        Landroid/inputmethodservice/InputMethodService$2;,
        Landroid/inputmethodservice/InputMethodService$3;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field private static final BUNDLE_DEFAULT_VALUE:Ljava/lang/String; = "def"

.field private static final BUNDLE_KEY:Ljava/lang/String; = "key"

.field static final DEBUG:Z = false

.field private static final DEX_CALL_METHOD_GET:Ljava/lang/String; = "getSettings"

.field private static final DEX_CONTENT_URI:Landroid/net/Uri;

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field private static final IS_3X4_KEYPAD:Ljava/lang/String; = "AxT9IME.is3X4Keypad"

.field private static final IS_MOVABLE_KEYPAD:Ljava/lang/String; = "AxT9IME.isMovableKeypad"

.field private static final IS_VISIBLE_CANDIDATE:Ljava/lang/String; = "AxT9IME.isVisibleCandidate"

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field private static final REQUEST_AXT9INFO:Ljava/lang/String; = "RequestAxT9Info"

.field private static final REQUEST_AXT9INFO_CLOSE:Ljava/lang/String; = "com.samsung.axt9info.close"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final RESPONSE_AXT9INFO_TYPE_CHANGED:Ljava/lang/String; = "ResponseAxT9InfoTypeChanged"

.field private static final SAFE_DEBUG:Z

.field private static final SETTINGS_KEY_TOUCH_KEYBOARD:Ljava/lang/String; = "touch_keyboard"

.field static final TAG:Ljava/lang/String; = "InputMethodService"

.field protected static mFloatingForMultiWindow:Z

.field private static mIsJanpaneseModel:Z

.field private static mIsTabletDevice:Z


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field private mBR:Landroid/content/BroadcastReceiver;

.field mBackDisposition:I

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field private mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDualViewContext:Landroid/content/Context;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/view/View;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field protected mIs34Keypad:Z

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field protected mIsMovable:Z

.field mIsVisibleWindow:Z

.field mLastShowInputRequested:Z

.field mRootView:Landroid/view/View;

.field private mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

.field mShouldClearInsetOfPreviousIme:Z

.field mShowInputFlags:I

.field mShowInputForceHWR:Z

.field mShowInputRequested:Z

.field mSideSyncShowInputRequested:Z

.field mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field private mStartInputToken:Landroid/os/IBinder;

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field protected mWACOMPen:Z

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z

.field minimized:Z

.field needSetlayout:Z

.field visibleTop:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->mIsTabletDevice:Z

    return v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartInputToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartInputToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->is34Keypad()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->clearInsetOfPreviousIme()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/inputmethodservice/InputMethodService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onShowSideSyncSoftInput(I)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateNavigationBarColor(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodService;->SAFE_DEBUG:Z

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodService;->DEX_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWACOMPen:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->visibleTop:I

    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBR:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Landroid/inputmethodservice/InputMethodService$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsMovable:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIs34Keypad:Z

    return-void
.end method

.method private checkDualViewContext()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, "checkDualViewContext "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "display"

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "com.samsung.android.hardware.display.category.DEX_DUALVIEW"

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v0, v1, v5

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mDualViewContext:Landroid/content/Context;

    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mDualViewContext:Landroid/content/Context;

    if-nez v3, :cond_1

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, "checkDualViewContext mDualViewContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private checkandshowInputMehtodPicker()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->dismissAndShowAgainInputMethodPicker()V

    return-void
.end method

.method private clearInsetOfPreviousIme()V
    .locals 2

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    return-void
.end method

.method private dismissClipboard()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "semclipboard"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "[IMS] hideWindow() - DismissClipboardDialogFromIMService "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->dismissDialog()V

    :cond_1
    return-void
.end method

.method private dispatchOnShowInputRequested(IZ)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    goto :goto_0
.end method

.method private doHideWindow()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_tablet_connect"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.sidesync.source.HIDE_SIP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartInputToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    return-void
.end method

.method private finishViews()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "CALL: onFinishInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "CALL: onFinishCandidatesView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method public static getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "def"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/inputmethodservice/InputMethodService;->DEX_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "getSettings"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, "Failed to get settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p2
.end method

.method private getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0
.end method

.method private getIconForImeAction(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    const v0, 0x108040b

    return v0

    :pswitch_0
    const v0, 0x1080408

    return v0

    :pswitch_1
    const v0, 0x108040c

    return v0

    :pswitch_2
    const v0, 0x108040d

    return v0

    :pswitch_3
    const v0, 0x1080409

    return v0

    :pswitch_4
    const v0, 0x1080407

    return v0

    :pswitch_5
    const v0, 0x108040a

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIsVisibleWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsVisibleWindow:Z

    return v0
.end method

.method private getSecDeviceInfo()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Landroid/inputmethodservice/InputMethodService;->mIsTabletDevice:Z

    :cond_0
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v3, Landroid/inputmethodservice/InputMethodService;->mIsJanpaneseModel:Z

    :cond_1
    return-void
.end method

.method private handleBack(Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "InputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleBack doIt  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShowInputRequested : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWindowVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    :cond_0
    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "handleBack return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    :cond_2
    :goto_0
    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "handleBack return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "handleBack return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private is34Keypad()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIs34Keypad:Z

    return v0
.end method

.method private isDeskTopMode()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "IN KNOX DESKTOP MODE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "NOT IN KNOX DESKTOP MODE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "mDesktopModeManager null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isDualViewEnabled()Z
    .locals 4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "touch_keyboard"

    const-string/jumbo v3, "false"

    invoke-static {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDualViewEnabled() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private notifyKeyboardClosedForAGIF()V
    .locals 2

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "notifyKeyboardClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyKeyboardClosed()V

    :cond_0
    return-void
.end method

.method private onShowSideSyncSoftInput(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    return-void
.end method

.method private onToggleSoftInput(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_0
.end method

.method private requestShowSelf(I)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method private resetStateForNewConfiguration()V
    .locals 10

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_0
    if-eqz v4, :cond_7

    if-eqz v3, :cond_5

    invoke-direct {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->dispatchOnShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mStartInputToken:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    :cond_2
    or-int/lit8 v5, v5, 0x1

    iget v9, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v6, v7, v8, v5, v9}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v6, :cond_6

    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    goto :goto_1
.end method

.method private sendInputViewShownState()V
    .locals 4

    const-string/jumbo v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AxT9IME.sendInputViewShownState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AxT9IME.IS_VISIBLE_CANDIDATE(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "AxT9IME.isVisibleWindow"

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "AxT9IME.isMovableKeypad"

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isMovable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "AxT9IME.is3X4Keypad"

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->is34Keypad()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "AxT9IME.isVisibleCandidate"

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "inputType"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "imeOptions"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setFlagIsVisibleWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsVisibleWindow:Z

    return-void
.end method

.method private updateNavigationBarColor(Landroid/inputmethodservice/InputMethodService;)V
    .locals 4

    const-string/jumbo v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNavigationBarColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateNavigationGuardColor()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "mWindow is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeFullInputMethod(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->changeFullInputMethod(Z)V

    return-void
.end method

.method doFinishInput()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method public doMinimizeSoftInput()V
    .locals 0

    return-void
.end method

.method public doMinimizeSoftInput(I)V
    .locals 0

    return-void
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v5, -0x1

    if-ne p3, v5, :cond_0

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    return v6

    :cond_0
    const/4 v5, -0x2

    if-ne p3, v5, :cond_1

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v6

    :cond_1
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_3
    return v7

    :cond_4
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_5

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_0

    :pswitch_0
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWindowWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mStartInputToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartInputToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " touchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mShouldClearInsetOfPreviousIme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSettingsObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public enableHardwareAcceleration()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    return v0
.end method

.method public final exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eq v0, p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->exposeContent(Landroid/os/IBinder;Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method public forceExtractEditTextClose()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditLayout;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    check-cast v0, Landroid/inputmethodservice/ExtractEditLayout;

    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public getBackDisposition()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v1
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1

    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    const v0, 0x104041b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    const v0, 0x104041d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x1040420

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_3
    const v0, 0x1040421

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_4
    const v0, 0x104041e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_5
    const v0, 0x104041c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_6
    const v0, 0x104041f

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideExtractCursorController()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hideCursorControllers()V

    return-void
.end method

.method public hideStatusIcon()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    return-void
.end method

.method public hideWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->dismissClipboard()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_tablet_connect"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "hideWindow: hiding!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->notifyKeyboardClosedForAGIF()V

    :cond_2
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setFlagIsVisibleWindow(Z)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState()V

    return-void
.end method

.method initViews()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForceHWR:Z

    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109007e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fancy_ime_animations"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10302fa

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x10202ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method initialize()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    :cond_0
    return-void
.end method

.method isEmailInputType(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v1, 0xff0

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/16 v1, 0xd0

    if-eq v0, v1, :cond_1

    return v2
.end method

.method public isExtractViewShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsMovable:Z

    return v0
.end method

.method public isShowInputRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onBindInput()V
    .locals 0

    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    :goto_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    :cond_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    :cond_2
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1
.end method

.method public onConfiguratinChangedForAllDisplays([Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfiguration - newConfigs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentFocusDisplayID()I

    move-result v1

    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfiguration - getCurrentFocusDisplayID()=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    sget-boolean v2, Landroid/inputmethodservice/InputMethodService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfiguration - newConfigs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] will be applied.("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, v5}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->resetStateForNewConfiguration()V

    return-void
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 7

    const/4 v6, -0x1

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz p2, :cond_2

    const/4 v2, -0x1

    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_0

    const-string/jumbo v3, "InputMethodService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window size has been changed. This may cause jankiness of resizing window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    :try_start_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/view/Window;->setLayout(II)V

    return-void

    :cond_2
    const/4 v2, -0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, "onConfigureWindow: IllegalArgumentException occured."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 12

    const v4, 0x103013e

    const/16 v7, 0x7db

    const/16 v8, 0x50

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v2, 0x1030054

    const v3, 0x103007f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->checkDualViewContext()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDualViewContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDualViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->isDeskTopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mDualViewContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mDualViewContext:Landroid/content/Context;

    const-string/jumbo v2, "InputMethod"

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    move-object v4, v11

    move-object v5, v11

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    :goto_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    const-string/jumbo v0, "semclipboard"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mClipBoardServiceEx:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-direct {p0, p0}, Landroid/inputmethodservice/InputMethodService;->updateNavigationBarColor(Landroid/inputmethodservice/InputMethodService;)V

    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getSecDeviceInfo()V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "RequestAxT9Info"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.axt9info.close"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "mBR.registerReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v9

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    const-string/jumbo v2, "InputMethod"

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    move-object v1, p0

    move-object v4, v11

    move-object v5, v11

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    goto :goto_1
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->dismissClipboard()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->notifyKeyboardClosedForAGIF()V

    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->unregister()V

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "mBR.unregisterReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit8 v1, v1, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-gez v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-gez v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.facebook.katana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit8 v1, v1, 0x0

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.facebook.orca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    return v3

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPressBtnSIPOnOff()Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    if-nez v3, :cond_1

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, "onEvaluateInputViewShown: mSettingsObserver must not be null here."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v3, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v6, :cond_2

    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v8, :cond_2

    iget v3, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v9, :cond_2

    const-string/jumbo v3, "InputMethodService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "config.keyboard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " config.hardKeyboardHidden : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, " virtual keyboard option is false so do not show keyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    iget v3, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v6, :cond_4

    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v8, :cond_6

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget v3, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v9, :cond_4

    if-eqz v2, :cond_7

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, " virtual keyboard option is true so show keyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    if-nez v2, :cond_5

    const-string/jumbo v3, "InputMethodService"

    const-string/jumbo v4, "AccessoryKeyboard is not connected but it can be connect BT mouse with keyboard attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    :cond_2
    return-void
.end method

.method public onExtractedDeleteText(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    sub-int v1, p2, p1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_0
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    :cond_0
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    :cond_1
    return-void
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 3

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "hideWindow set minimized false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyDown B key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyDown handleBackInTextActionModeIfNeeded key - return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyDown handleback true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyDown handleback false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyDown not B key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyUp B key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyUp handleBackInTextActionModeIfNeeded key - return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyUp handle B"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onKeyUp not B key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1
.end method

.method public onReplaceDeleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    invoke-interface {v1, p2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    :cond_0
    return-void
.end method

.method public onShowInputRequested(IZ)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForceHWR:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "onEvaluateInputViewShown() - false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_4

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mSettingsObserver:Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->-wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "Keyboard is not show because accessory Keyboard is connecting with Explicit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForceHWR:Z

    :cond_5
    return v4
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    :cond_1
    return-void
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getIconForImeAction(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    sub-int/2addr p3, v2

    sub-int/2addr p4, v2

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    if-gez p3, :cond_3

    const/4 p3, 0x0

    :cond_0
    :goto_0
    if-gez p4, :cond_4

    const/4 p4, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    :cond_2
    return-void

    :cond_3
    if-le p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_4
    if-le p4, v1, :cond_1

    move p4, v1

    goto :goto_1
.end method

.method public onViewClicked(Z)V
    .locals 0

    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    return-void
.end method

.method public onWindowShown()V
    .locals 0

    return-void
.end method

.method prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-lez p1, :cond_0

    invoke-interface {v2, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    :cond_0
    :goto_0
    invoke-interface {v2, p2, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p2, v3}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    :cond_1
    :goto_1
    int-to-long v4, p2

    return-wide v4

    :cond_2
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {p0, p1, p1, v3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_1

    const-string/jumbo v3, " "

    invoke-virtual {p0, p2, p2, v3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method reportExtractedMovement(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    return-void

    :pswitch_0
    neg-int v0, p2

    goto :goto_0

    :pswitch_1
    move v0, p2

    goto :goto_0

    :pswitch_2
    neg-int v1, p2

    goto :goto_0

    :pswitch_3
    move v1, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_1
    return v5

    :cond_2
    return v4
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public sendKeyChar(C)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public setExtractSelectionToEnd()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/ExtractEditText;->setSelection(I)V

    invoke-virtual {v0, v1, v1}, Landroid/inputmethodservice/ExtractEditText;->onSelectionChanged(II)V

    return-void
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-eqz p1, :cond_1

    const v1, 0x1020025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/ExtractEditText;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    const v1, 0x102031e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    if-eqz v1, :cond_0

    const v1, 0x102031d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    check-cast v0, Landroid/inputmethodservice/ExtractEditLayout;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditLayout;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/view/View;

    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    :cond_0
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    return-void
.end method

.method public setIs34Keypad(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIs34Keypad:Z

    return-void
.end method

.method public setIsMovable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodService;->mIsMovable:Z

    return-void
.end method

.method public setPointerIconType(I)V
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return-void
.end method

.method public setTheme(I)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3

    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public showWindow(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "InputMethodService"

    const-string/jumbo v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setFlagIsVisibleWindow(Z)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->sendInputViewShownState()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    :goto_0
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    :goto_1
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    throw v1

    :cond_3
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    goto :goto_1
.end method

.method showWindowInner(Z)V
    .locals 13

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v7, :cond_8

    move v7, v8

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v11

    :goto_1
    or-int v5, v7, v10

    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    :try_start_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :cond_1
    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    :cond_2
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->keyboard:I

    if-ne v7, v12, :cond_4

    const-string/jumbo v7, "KOREA"

    const-string/jumbo v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->isEmailInputType(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v10, "SideSyncShowInputRequested true. CALL: onStartInput"

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v7, v9}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_4
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForceHWR:Z

    if-nez v7, :cond_5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->keyboard:I

    if-ne v7, v12, :cond_a

    const-string/jumbo v7, "KOREA"

    const-string/jumbo v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->isEmailInputType(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_5
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v10, "SideSyncShowInputRequested true. WILLCALL: onStartInputView"

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v7, v9}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0, v9}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    :cond_7
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "sidesync_tablet_connect"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_e

    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v8, "showWindow: sidesync_tablet_connect is connected!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    return-void

    :cond_8
    move v7, v9

    goto/16 :goto_0

    :cond_9
    move v10, v9

    goto/16 :goto_1

    :catch_0
    move-exception v2

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v8, "showWindowInner: IllegalArgumentException occured."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :cond_a
    const-string/jumbo v7, "InputMethodService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SWI - SIR true, mIVS : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    if-nez v7, :cond_c

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->keyboard:I

    if-ne v7, v12, :cond_d

    const-string/jumbo v7, "KOREA"

    const-string/jumbo v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->isEmailInputType(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    iput-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v7, v9}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v7, "InputMethodService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SWI - mIVS : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " + mCVS : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_12

    :goto_3
    or-int/lit8 v4, v11, 0x1

    if-eq v5, v4, :cond_f

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/inputmethodservice/InputMethodService;->mStartInputToken:Landroid/os/IBinder;

    iget v11, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v7, v8, v10, v4, v11}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    :cond_f
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    if-eqz v7, :cond_11

    :cond_10
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v7, :cond_11

    const-string/jumbo v7, "InputMethodService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showWindow: showing! "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x7

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    :try_start_1
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v7}, Landroid/inputmethodservice/SoftInputWindow;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    :cond_11
    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mSideSyncShowInputRequested:Z

    return-void

    :cond_12
    move v11, v9

    goto :goto_3

    :catch_1
    move-exception v1

    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v8, "showWindow: BadTokenException occured!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    goto :goto_4

    :catch_2
    move-exception v2

    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v8, "showWindow: IllegalArgumentException occured!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    goto :goto_4

    :catch_3
    move-exception v3

    const-string/jumbo v7, "InputMethodService"

    const-string/jumbo v8, "showWindow: NumberFormatException occured!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v9, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    goto :goto_4
.end method

.method startExtractingText(Z)V
    .locals 14

    const/4 v13, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    iget v10, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v10, v6, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iput v12, v6, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const/16 v10, 0xa

    iput v10, v6, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    const/16 v10, 0x2710

    iput v10, v6, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_0
    iput-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v9, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v9, "InputMethodService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", input connection = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v9, v5, 0xf

    if-ne v9, v12, :cond_2

    const/high16 v9, 0x40000

    and-int/2addr v9, v5

    if-eqz v9, :cond_2

    const/high16 v9, 0x20000

    or-int/2addr v5, v9

    :cond_2
    invoke-virtual {v1, v5}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    iget-object v9, v2, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundColor(I)V

    iget-object v9, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-ne v9, v13, :cond_4

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string/jumbo v10, "AppName=Memo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string/jumbo v10, "AppName=Diary"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    if-ne v9, v13, :cond_4

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string/jumbo v10, "Color"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "0x"

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v7, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v0, v10

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    :try_start_2
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    :cond_5
    return-void

    :cond_6
    invoke-interface {v4, v6, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v9

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    const-string/jumbo v9, ""

    invoke-virtual {v1, v9}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    throw v9

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public undoMinimizeSoftInput()V
    .locals 0

    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    goto :goto_0
.end method

.method updateExtractFrameVisibility()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    goto :goto_3
.end method

.method public updateFullscreenMode()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    :goto_0
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v4, v5, :cond_7

    const/4 v0, 0x1

    :goto_1
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v4, v1, :cond_0

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    :cond_0
    const/4 v0, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_8

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, -0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2
.end method

.method public updateInputViewShown()V
    .locals 4

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method
