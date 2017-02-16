.class public final Lcom/samsung/android/directpeninput/SemDirectPenInput;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/SemDirectPenInput$1;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$2;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;,
        Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;
    }
.end annotation


# static fields
.field public static final BIND_MSG_REQUEST_IME_RECT:I = 0x2

.field public static final BIND_MSG_REQUEST_TARGET_RECT:I = 0x1

.field public static final BIND_MSG_RESULT_IME_CLOSED:I = 0x2

.field public static final BIND_MSG_RESULT_IME_OPENED:I = 0x1

.field public static final BUTTON_DONE:Ljava/lang/String; = "ACTION_DONE"

.field public static final BUTTON_GO:Ljava/lang/String; = "ACTION_GO"

.field public static final BUTTON_SEARCH:Ljava/lang/String; = "ACTION_SEARCH"

.field public static final BUTTON_SEND:Ljava/lang/String; = "ACTION_SEND"

.field private static final CLIENT_SEQUENCE_MASK:I = 0xff

.field private static final CLIENT_UNIQUE_ID_MASK:I = -0x100

.field private static final DEBUG:Z

.field public static final FLAG_HELP_MODE:I = 0x4

.field public static final FLAG_IMAGE_WRITING:I = 0x1

.field public static final FLAG_MATH_WRITING:I = 0x2

.field public static final FLAG_MMS_MODE:I = 0x8

.field public static final FLAG_START_DRAWING_MODE:I = 0x10

.field private static final HELP_MODE_RESULT_CLOSED:Ljava/lang/String; = "CLOSED"

.field private static final HELP_MODE_RESULT_HOVERED:Ljava/lang/String; = "HOVERED"

.field private static final HELP_MODE_RESULT_HOVER_CANCELED:Ljava/lang/String; = "HOVER_CANCELED"

.field private static final HELP_MODE_RESULT_OPENED:Ljava/lang/String; = "OPENED"

.field private static final HELP_MODE_RESULT_TEXT_INSERTED:Ljava/lang/String; = "TEXT_INSERTED"

.field public static final IME_CMD_CANCEL_CLOSE:Ljava/lang/String; = "com.samsung.android.directpeninput/CANCEL_CLOSE"

.field public static final IME_CMD_SEND_BINDER:Ljava/lang/String; = "com.samsung.android.directpeninput/SEND_BINDER"

.field private static final MAX_WAIT:I = 0x5

.field private static final MMS_DATA_DELETE:Ljava/lang/String; = "MMS_DATA_DELETE"

.field private static final MSG_CANCEL_WRITINGBUDDY_CUE:I = 0x6

.field private static final MSG_EDITOR_ACTION_DOWN:I = 0x7

.field private static final MSG_SERVICE_RESULT_RECEIVED:I = 0x3

.field private static final MSG_SERVICE_TEXT_DELETED:I = 0x2

.field private static final MSG_SERVICE_TEXT_INSERTED:I = 0x1

.field private static final MSG_SERVICE_UPDATE_DIALOG:I = 0x8

.field private static final MSG_SERVICE_UPDATE_POSITION:I = 0x4

.field private static final MSG_SERVICE_UPDATE_POSITION_CHECK:I = 0x9

.field private static final MSG_SHOW_WRITINGBUDDY_CUE:I = 0x5

.field public static final RESULT_FIELD_DELIMITER:Ljava/lang/String; = "//"

.field public static final RESULT_STRING_DELIMITER:Ljava/lang/String; = "//"

.field public static final SERVICE_CB_CLIENT_CHANGED:Ljava/lang/String; = "service_cb_client_changed"

.field public static final SERVICE_CB_CLOSED:Ljava/lang/String; = "service_cb_closed"

.field public static final SERVICE_CB_DATA_CHANGED:Ljava/lang/String; = "service_cb_perform_editor_action"

.field public static final SERVICE_CB_INFLATE_DONE:Ljava/lang/String; = "service_cb_inflate_done"

.field public static final SERVICE_CB_INIT_TEXT:Ljava/lang/String; = "service_cb_init_text"

.field public static final SERVICE_CB_PRIVATE:Ljava/lang/String; = "service_cb_private"

.field public static final SERVICE_CB_WRITING_DONE:Ljava/lang/String; = "service_cb_writing_done"

.field public static final SERVICE_EVENT_DATA_CHANGED:I = 0x2

.field public static final SERVICE_EVENT_WRITING_CANCEL:I = 0x1

.field public static final SERVICE_EVENT_WRITING_DONE:I = 0x0

.field private static final START_DELAY_TIME_MS:I = 0x96

.field private static final STATE_EVENT_SERVICE_CALLBACK_CLOSED:I = 0x2

.field private static final STATE_EVENT_SERVICE_CALLBACK_INFLATE_DONE:I = 0x1

.field private static final STATE_EVENT_TYPE_MOTION:I = 0x1

.field private static final STATE_EVENT_TYPE_SERVICE_CALLBACK:I = 0x2

.field private static final STATE_RESET_COUNT:I = 0x3

.field private static final STATE_STEP_STANDBY:I = 0x0

.field private static final STATE_STEP_WRITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DirectPenInput"

.field public static final TEMPLATE_EDITOR:I = 0x16

.field public static final TYPE_BOARD_EDITOR:I = 0x1

.field public static final TYPE_BOARD_NONE:I = 0x0

.field public static final TYPE_BOARD_TEMPLATE:I = 0x2

.field public static final TYPE_EDITOR_NONE:I = 0x0

.field public static final TYPE_EDITOR_NUMBER:I = 0x1

.field public static final TYPE_EDITOR_TEXT:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mBoardTemplate:I

.field private mBoardType:I

.field private mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

.field private mCanShowAutoCompletePopup:Z

.field private mCanStartDirectPenInput:Z

.field private mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

.field private mDPIRect:Landroid/graphics/Rect;

.field private mEditCount:I

.field private mEditorType:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSizeChange:Z

.field private mImageWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

.field private mInitRect:Landroid/graphics/Rect;

.field private mIsCursorBlinkDisabled:Z

.field private mIsForceMode:Z

.field private mIsHelpModeEnabled:Z

.field private mIsHoverState:Z

.field private mIsImageWritingEnabled:Z

.field private mIsMathWritingEnabled:Z

.field private mIsMultiLineEditor:Z

.field private mIsPerformingAction:Z

.field private mIsPopupCueShowMSGCalled:Z

.field private mIsReceiveActionButtonEnabled:Z

.field private mIsWaitingHideSoftInput:Z

.field private mIsWatchActionEnabled:Z

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

.field private mScrRectUpdated:Landroid/graphics/Rect;

.field mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

.field private mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

.field private mShowCnt:I

.field private mState:I

.field private mStateResetCnt:I

.field private mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

.field private mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

.field private mViewID:I

.field private mWindowMode:I

.field private motionEvent:Landroid/view/MotionEvent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/directpeninput/SemDirectPenInput;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 144
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    .line 363
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    .line 377
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 379
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    .line 381
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 383
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 385
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 387
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 389
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    .line 391
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    .line 395
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    .line 397
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    .line 399
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 401
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    .line 403
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    .line 405
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    .line 409
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    .line 2366
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2375
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    .line 2389
    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 2393
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    .line 2987
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->initVariable()V

    .line 540
    invoke-virtual {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setParentView(Landroid/view/View;)V

    .line 541
    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1, p0}, Landroid/view/View;->semSetDirectPenInput(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    .line 545
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p0, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    .line 538
    :goto_0
    return-void

    .line 548
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    goto :goto_0
.end method

.method private canStartDirectPenInput(Z)Z
    .locals 15
    .param p1, "refresh"    # Z

    .prologue
    .line 1852
    iget-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 1854
    .local v6, "result":Z
    if-nez p1, :cond_0

    .line 1855
    return v6

    .line 1859
    :cond_0
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v6

    .line 1862
    :goto_0
    if-eqz v6, :cond_1

    .line 1863
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1864
    const-string/jumbo v13, "pen_writing_buddy"

    const/4 v14, 0x0

    .line 1863
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1864
    const/4 v13, 0x1

    .line 1863
    if-ne v12, v13, :cond_a

    const/4 v6, 0x1

    .line 1868
    .end local v6    # "result":Z
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/EditText;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->isFocusable()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1873
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/EditText;

    if-eqz v12, :cond_3

    .line 1874
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1875
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v12, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_3

    move-object v11, v3

    .line 1876
    nop

    nop

    .line 1877
    .local v11, "wlp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v12, "DirectPenInput"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "canStartDirectPenInput : window type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_3

    .line 1879
    const/4 v6, 0x0

    .line 1885
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1887
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v12

    iput v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    .line 1915
    if-eqz v6, :cond_4

    .line 1916
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1917
    .local v4, "p":Landroid/view/ViewParent;
    :goto_4
    if-eqz v4, :cond_4

    instance-of v12, v4, Landroid/view/ViewGroup;

    if-eqz v12, :cond_4

    move-object v12, v4

    .line 1918
    nop

    nop

    invoke-virtual {v12}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1919
    const/4 v6, 0x0

    .line 1927
    .end local v4    # "p":Landroid/view/ViewParent;
    :cond_4
    if-eqz v6, :cond_8

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/EditText;

    if-eqz v12, :cond_8

    .line 1928
    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1929
    .local v2, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v5, Landroid/widget/EditText;

    .line 1930
    .local v5, "parent":Landroid/widget/EditText;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1932
    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v12, 0xf

    .line 1933
    .local v1, "editorClass":I
    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v12, 0xff0

    .line 1935
    .local v7, "variation":I
    const/16 v12, 0x80

    if-eq v7, v12, :cond_5

    .line 1936
    const/16 v12, 0x90

    if-ne v7, v12, :cond_e

    .line 1939
    :cond_5
    :goto_5
    const/4 v6, 0x0

    .line 1943
    :cond_6
    if-eqz v6, :cond_7

    iget-object v12, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v12, :cond_7

    .line 1944
    iget-object v12, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v13, "com.samsung.android/disableDirectPenInput"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1943
    if-eqz v12, :cond_7

    .line 1945
    const/4 v6, 0x0

    .line 1949
    :cond_7
    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1950
    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v13, 0x20000

    and-int/2addr v12, v13

    iput v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v12, :cond_f

    const/4 v12, 0x1

    .line 1949
    :goto_6
    iput-boolean v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    .line 1953
    if-eqz v6, :cond_8

    iget-boolean v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v12, :cond_11

    .line 1968
    .end local v1    # "editorClass":I
    .end local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v5    # "parent":Landroid/widget/EditText;
    .end local v7    # "variation":I
    :cond_8
    :goto_7
    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 1970
    const-string/jumbo v12, "DirectPenInput"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "canStartDirectPenInput() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return v6

    .line 1859
    .restart local v6    # "result":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1863
    :cond_a
    const/4 v6, 0x0

    .local v6, "result":Z
    goto/16 :goto_1

    .line 1869
    .end local v6    # "result":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "result":Z
    goto/16 :goto_2

    .line 1885
    .end local v6    # "result":Z
    :cond_c
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    goto/16 :goto_3

    .line 1922
    .end local v0    # "context":Landroid/content/Context;
    .restart local v4    # "p":Landroid/view/ViewParent;
    :cond_d
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto/16 :goto_4

    .line 1937
    .end local v4    # "p":Landroid/view/ViewParent;
    .restart local v1    # "editorClass":I
    .restart local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v5    # "parent":Landroid/widget/EditText;
    .restart local v7    # "variation":I
    :cond_e
    const/16 v12, 0xe0

    if-eq v7, v12, :cond_5

    .line 1938
    const/4 v12, 0x2

    if-ne v1, v12, :cond_6

    const/16 v12, 0x10

    if-ne v7, v12, :cond_6

    goto :goto_5

    .line 1950
    :cond_f
    const/4 v12, 0x0

    goto :goto_6

    .line 1949
    :cond_10
    const/4 v12, 0x0

    goto :goto_6

    .line 1953
    :cond_11
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_8

    .line 1954
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v10

    .line 1955
    .local v10, "visibleRect":Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_9
    invoke-direct {p0, v12}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1958
    .local v8, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 1960
    .local v9, "visibleRatio":F
    const v12, 0x3e4ccccd    # 0.2f

    cmpg-float v12, v9, v12

    if-gez v12, :cond_8

    .line 1961
    const/4 v6, 0x0

    .line 1963
    .restart local v6    # "result":Z
    const-string/jumbo v12, "DirectPenInput"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "View is scrolled."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1954
    .end local v6    # "result":Z
    .end local v8    # "viewRect":Landroid/graphics/Rect;
    .end local v9    # "visibleRatio":F
    .end local v10    # "visibleRect":Landroid/graphics/Rect;
    :cond_12
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_8

    .line 1955
    .restart local v10    # "visibleRect":Landroid/graphics/Rect;
    :cond_13
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_9
.end method

.method private canStartTemplateDirectPenInput(Z)Z
    .locals 9
    .param p1, "refresh"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1976
    iget-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 1978
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 1979
    return v2

    .line 1983
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    .line 1994
    .end local v2    # "result":Z
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1996
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    .line 2024
    if-eqz v2, :cond_1

    .line 2025
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2026
    .local v1, "p":Landroid/view/ViewParent;
    :goto_2
    if-eqz v1, :cond_1

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, v1

    .line 2027
    nop

    nop

    invoke-virtual {v5}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2028
    const/4 v2, 0x0

    .line 2035
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_1
    if-eqz v2, :cond_3

    .line 2036
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_3
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 2037
    .local v4, "visibleRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2040
    .local v3, "viewRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_3

    .line 2041
    const/4 v2, 0x0

    .line 2043
    .local v2, "result":Z
    sget-boolean v5, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VisibleRect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ViewRect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v5}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2046
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2047
    iput-object v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 2052
    .end local v2    # "result":Z
    .end local v3    # "viewRect":Landroid/graphics/Rect;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    .line 2054
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "canStartDirectPenInput() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    return v2

    .line 1983
    .local v2, "result":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "result":Z
    goto/16 :goto_0

    .line 1994
    .end local v2    # "result":Z
    :cond_5
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    goto/16 :goto_1

    .line 2031
    .end local v0    # "context":Landroid/content/Context;
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_6
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto/16 :goto_2

    .line 2036
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_3

    .line 2037
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4
.end method

.method private checkDirectPenInputServcie()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2177
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2179
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.directpeninputservice"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    return v5

    .line 2181
    :catch_0
    move-exception v0

    .line 2182
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Cannot find DirectPenInputSerivce"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return v4

    .line 2186
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v4
.end method

.method private checkUseSamsungIME()Z
    .locals 3

    .prologue
    .line 2190
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2191
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 2192
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1

    return v1

    .line 2194
    :cond_0
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Can not find IMM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    const/4 v1, 0x0

    return v1
.end method

.method private closeDirectPenInput(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 1840
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v1, :cond_0

    .line 1841
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1843
    :catch_0
    move-exception v0

    .line 1844
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Can not close DirectPenInput, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2720
    move-object v0, p2

    .line 2721
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_0

    .line 2722
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2724
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopupCue()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    .line 1395
    return-void

    .line 1399
    :cond_0
    new-instance v0, Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 1402
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1471
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1393
    return-void
.end method

.method private dismissPopupCue(Z)Z
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 2073
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "dismissPopupCue()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v0, 0x0

    .line 2079
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2080
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2081
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2085
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v1, :cond_2

    .line 2086
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2087
    const/4 v0, 0x1

    .line 2090
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2093
    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2706
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2707
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    .line 2714
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 2709
    :cond_1
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Attempting to create Handler from background thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getModeFlag()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 685
    const/4 v1, 0x0

    .line 687
    .local v1, "flag":I
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    if-eqz v4, :cond_0

    .line 688
    const/4 v1, 0x1

    .line 691
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMathWritingEnabled:Z

    if-eqz v4, :cond_1

    .line 692
    or-int/lit8 v1, v1, 0x2

    .line 695
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHelpModeEnabled:Z

    if-eqz v4, :cond_2

    .line 696
    or-int/lit8 v1, v1, 0x4

    .line 699
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_5

    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, "isMmsMode":Z
    const/4 v3, 0x0

    .line 703
    .local v3, "isStartDrawingMode":Z
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 704
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 705
    const-string/jumbo v4, "isMmsMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 706
    .local v2, "isMmsMode":Z
    const-string/jumbo v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 708
    .end local v2    # "isMmsMode":Z
    .end local v3    # "isStartDrawingMode":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 709
    or-int/lit8 v1, v1, 0x8

    .line 716
    :cond_4
    if-eqz v3, :cond_5

    .line 717
    or-int/lit8 v1, v1, 0x10

    .line 718
    const-string/jumbo v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_5
    return v1
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2748
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2750
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2751
    filled-new-array {v4, v4}, [I

    move-result-object v0

    .line 2752
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2753
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2755
    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2737
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2739
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2740
    filled-new-array {v4, v4}, [I

    move-result-object v0

    .line 2741
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2742
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2744
    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1
.end method

.method private getTargetDPIRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2760
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2762
    .local v12, "widthNormalizer":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 2764
    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v10, p1

    .line 2765
    .local v10, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 2767
    .local v11, "vp":Landroid/view/ViewParent;
    const/4 v9, 0x0

    .line 2768
    .local v9, "top":I
    const/4 v1, 0x0

    .line 2769
    .local v1, "bottomDiff":I
    const/4 v3, 0x0

    .line 2770
    .local v3, "left":I
    const/4 v7, 0x0

    .line 2772
    .local v7, "rightDiff":I
    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    .line 2773
    check-cast v4, Landroid/view/View;

    .line 2776
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 2777
    .local v14, "y":I
    add-int/2addr v9, v14

    .line 2779
    if-gez v14, :cond_0

    .line 2780
    if-gez v9, :cond_0

    .line 2781
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2782
    const/4 v9, 0x0

    .line 2786
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    .line 2787
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    .line 2788
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2789
    const/4 v9, 0x0

    .line 2802
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v2, v15, v16

    .line 2803
    .local v2, "bottomPosY":I
    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 2804
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    .line 2810
    :goto_2
    if-eqz p2, :cond_4

    .line 2812
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 2813
    .local v13, "x":I
    rem-int/2addr v13, v12

    .line 2814
    add-int/2addr v3, v13

    .line 2816
    if-gez v13, :cond_2

    .line 2817
    if-gez v3, :cond_2

    .line 2818
    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2819
    const/4 v3, 0x0

    .line 2823
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 2824
    .local v5, "parentScrollX":I
    rem-int/2addr v5, v12

    .line 2825
    if-lez v5, :cond_3

    .line 2826
    if-le v5, v3, :cond_7

    .line 2827
    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2828
    const/4 v3, 0x0

    .line 2835
    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    .line 2836
    .local v8, "rightPosX":I
    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 2837
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    .line 2844
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    :cond_4
    :goto_4
    move-object v10, v4

    .line 2845
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    .line 2791
    .end local v2    # "bottomPosY":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    .line 2806
    .restart local v2    # "bottomPosY":I
    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    .line 2807
    const/4 v1, 0x0

    goto :goto_2

    .line 2830
    .restart local v5    # "parentScrollX":I
    .restart local v13    # "x":I
    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    .line 2839
    .restart local v8    # "rightPosX":I
    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    .line 2840
    const/4 v7, 0x0

    goto :goto_4

    .line 2848
    .end local v2    # "bottomPosY":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_9
    sget-boolean v15, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "DirectPenInput"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getVisibleRectInWindow : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_a
    return-object v6
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2854
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2856
    .local v12, "widthNormalizer":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 2858
    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v10, p1

    .line 2859
    .local v10, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 2861
    .local v11, "vp":Landroid/view/ViewParent;
    const/4 v9, 0x0

    .line 2862
    .local v9, "top":I
    const/4 v1, 0x0

    .line 2863
    .local v1, "bottomDiff":I
    const/4 v3, 0x0

    .line 2864
    .local v3, "left":I
    const/4 v7, 0x0

    .line 2866
    .local v7, "rightDiff":I
    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    .line 2867
    check-cast v4, Landroid/view/View;

    .line 2870
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 2871
    .local v14, "y":I
    add-int/2addr v9, v14

    .line 2873
    if-gez v14, :cond_0

    .line 2874
    if-gez v9, :cond_0

    .line 2875
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2876
    const/4 v9, 0x0

    .line 2880
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    .line 2881
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    .line 2882
    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    .line 2883
    const/4 v9, 0x0

    .line 2896
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v2, v15, v16

    .line 2897
    .local v2, "bottomPosY":I
    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 2898
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    .line 2904
    :goto_2
    if-eqz p2, :cond_4

    .line 2906
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 2907
    .local v13, "x":I
    rem-int/2addr v13, v12

    .line 2908
    add-int/2addr v3, v13

    .line 2910
    if-gez v13, :cond_2

    .line 2911
    if-gez v3, :cond_2

    .line 2912
    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2913
    const/4 v3, 0x0

    .line 2917
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 2918
    .local v5, "parentScrollX":I
    rem-int/2addr v5, v12

    .line 2919
    if-lez v5, :cond_3

    .line 2920
    if-le v5, v3, :cond_7

    .line 2921
    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    .line 2922
    const/4 v3, 0x0

    .line 2929
    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    .line 2930
    .local v8, "rightPosX":I
    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 2931
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    .line 2938
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    :cond_4
    :goto_4
    move-object v10, v4

    .line 2939
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    .line 2885
    .end local v2    # "bottomPosY":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    .line 2900
    .restart local v2    # "bottomPosY":I
    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    .line 2901
    const/4 v1, 0x0

    goto :goto_2

    .line 2924
    .restart local v5    # "parentScrollX":I
    .restart local v13    # "x":I
    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    .line 2933
    .restart local v8    # "rightPosX":I
    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    .line 2934
    const/4 v7, 0x0

    goto :goto_4

    .line 2942
    .end local v2    # "bottomPosY":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "parentScrollX":I
    .end local v8    # "rightPosX":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_9
    sget-boolean v15, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "DirectPenInput"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getVisibleRectOnScreen : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    :cond_a
    return-object v6
.end method

.method private getWindowMode()I
    .locals 1

    .prologue
    .line 2699
    const/high16 v0, 0x1000000

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 2287
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2286
    :goto_0
    :pswitch_0
    return-void

    .line 2289
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .line 2290
    .local v4, "text":Ljava/lang/CharSequence;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2291
    .local v5, "where":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2292
    .local v1, "nextCursor":I
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextInserted(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 2296
    .end local v1    # "nextCursor":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "where":I
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2297
    .local v3, "start":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2298
    .local v0, "end":I
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextDeleted(II)V

    goto :goto_0

    .line 2302
    .end local v0    # "end":I
    .end local v3    # "start":I
    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2303
    .local v2, "result":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 2307
    .end local v2    # "result":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionChanged(I)V

    goto :goto_0

    .line 2311
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInputCue()V

    goto :goto_0

    .line 2315
    :pswitch_6
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2316
    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2320
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onUpdateDialog()V

    goto :goto_0

    .line 2324
    :pswitch_8
    invoke-direct {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionCheck(I)V

    goto :goto_0

    .line 2287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private initVariable()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    .line 558
    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 560
    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 562
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 568
    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    .line 570
    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setEditorType(I)V

    .line 555
    return-void
.end method

.method private isDPIShowing()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 964
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v0

    .line 964
    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 964
    if-eqz v0, :cond_0

    .line 967
    return v2

    .line 969
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordInputType(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2947
    if-nez p1, :cond_0

    .line 2948
    return v4

    :cond_0
    move-object v1, p1

    .line 2951
    check-cast v1, Landroid/widget/EditText;

    .line 2952
    .local v1, "et":Landroid/widget/EditText;
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 2953
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 2954
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 2955
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2

    .line 2960
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 2956
    :cond_2
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_1

    .line 2957
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 2958
    :cond_3
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x81

    if-eq v2, v3, :cond_1

    .line 2959
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x91

    if-eq v2, v3, :cond_1

    .line 2962
    return v4
.end method

.method private notifyPositionCheck(I)V
    .locals 7
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x0

    .line 871
    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPositionCheck code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_4

    .line 874
    const/4 v2, 0x0

    .line 875
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 876
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 877
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 879
    .local v1, "scrRect":Landroid/graphics/Rect;
    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update Position check. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 882
    return-void

    .line 876
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 877
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 886
    .local v1, "scrRect":Landroid/graphics/Rect;
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_4

    .line 887
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_4
    :goto_2
    return-void

    .line 889
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pointInView(FF)Z
    .locals 1
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2732
    cmpl-float v1, p2, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 2733
    cmpl-float v1, p3, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 2732
    :cond_0
    return v0
.end method

.method private registerEventListener(Landroid/view/View;)V
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 933
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 940
    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 931
    return-void
.end method

.method private registerPositionChangeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2350
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v1, v2, :cond_1

    .line 2352
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2353
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDPIPositionListenerEnalbed(Z)V

    .line 2349
    :cond_0
    :goto_0
    return-void

    .line 2356
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2357
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2358
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2359
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2360
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private resetPenPointerIcon()V
    .locals 3

    .prologue
    .line 1383
    const/16 v1, 0x4e21

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1078
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 1080
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 1083
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1086
    const-string/jumbo v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Report current DPI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 1090
    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    .line 1091
    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 1077
    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2396
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2397
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    .line 2399
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2410
    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    .line 2412
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 2413
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 2414
    .local v1, "clientViewID":I
    move v4, p4

    .line 2416
    .local v4, "receivedClientID":I
    if-ne v1, p4, :cond_0

    .line 2417
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 2420
    :cond_0
    const-string/jumbo v7, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2421
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2422
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 2421
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2420
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const/4 v6, 0x0

    return v6

    .line 2421
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2422
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2428
    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :cond_3
    const/4 v5, 0x1

    .line 2430
    .local v5, "showLog":Z
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-nez v6, :cond_d

    .line 2431
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    .line 2432
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2433
    .local v0, "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_8

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2434
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2437
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2441
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2442
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x96

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2444
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2474
    :cond_5
    :goto_2
    const/4 v6, 0x7

    if-ne v0, v6, :cond_6

    .line 2475
    const/4 v5, 0x0

    .line 2528
    .end local v0    # "action":I
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 2529
    const-string/jumbo v7, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2530
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2531
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 2530
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2529
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :cond_7
    const/4 v6, 0x0

    return v6

    .line 2446
    .restart local v0    # "action":I
    :cond_8
    const/16 v6, 0xa

    if-ne v0, v6, :cond_b

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2447
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 2449
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2450
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2453
    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2455
    :cond_9
    if-eqz v2, :cond_a

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v2, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_a

    .line 2456
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2459
    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2462
    :cond_a
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_4"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x28

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2466
    .end local v2    # "im":Landroid/hardware/input/InputManager;
    :cond_b
    if-nez v0, :cond_c

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2467
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_DOWN"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto/16 :goto_2

    .line 2469
    :cond_c
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2470
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_UP"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x1e

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2478
    .end local v0    # "action":I
    :cond_d
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 2479
    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    .line 2480
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2482
    .restart local v0    # "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_e

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_e

    .line 2483
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "Reset state"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 2485
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 2488
    .end local v0    # "action":I
    :cond_e
    const/4 v6, 0x2

    if-ne p1, v6, :cond_6

    .line 2489
    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    .line 2492
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2495
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    .line 2498
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_f

    .line 2499
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2503
    :cond_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2504
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_11

    .line 2505
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 2511
    :goto_6
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_10

    .line 2512
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 2513
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 2517
    :cond_10
    const-string/jumbo v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 2520
    const-string/jumbo v6, "OPENED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 2523
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x96

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2507
    :cond_11
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "Can not find IMM"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2530
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 2531
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_5
.end method

.method private scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2538
    invoke-static {p3}, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->isDuplicated(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2539
    const/4 v4, 0x0

    return v4

    .line 2542
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    .line 2543
    const/4 v3, 0x1

    .line 2546
    .local v3, "showLog":Z
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 2547
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2548
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 2550
    const-string/jumbo v5, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2551
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2550
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const/4 v4, 0x0

    return v4

    .line 2551
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2557
    :cond_2
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-nez v4, :cond_d

    .line 2558
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 2559
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2560
    .local v0, "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2561
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_ENTER"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2564
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x96

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2565
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2605
    :cond_3
    :goto_1
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 2606
    const/4 v3, 0x0

    .line 2652
    .end local v0    # "action":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 2653
    const-string/jumbo v5, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2654
    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2653
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2567
    .restart local v0    # "action":I
    :cond_6
    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    .line 2568
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_MOVE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2570
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 2573
    :cond_7
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2574
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 2576
    .local v1, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2577
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2580
    const-string/jumbo v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2582
    :cond_8
    if-eqz v1, :cond_9

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_9

    .line 2583
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2586
    const-string/jumbo v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2588
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2589
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_3"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2593
    :cond_a
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_4"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2597
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_b
    if-nez v0, :cond_c

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2598
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto/16 :goto_1

    .line 2600
    :cond_c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2601
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_UP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2609
    .end local v0    # "action":I
    :cond_d
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 2610
    const/4 v4, 0x1

    if-ne p1, v4, :cond_e

    .line 2611
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2613
    .restart local v0    # "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 2614
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "Reset state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    .line 2616
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    goto/16 :goto_2

    .line 2618
    .end local v0    # "action":I
    :cond_e
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 2619
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 2622
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 2623
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_f

    .line 2624
    new-instance v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Handler;)V

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    .line 2635
    :goto_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 2638
    const-string/jumbo v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 2641
    const-string/jumbo v4, "OPENED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 2644
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    .line 2647
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2631
    :cond_f
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2654
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private sendActionButtonResult(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 1364
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    if-eqz v1, :cond_0

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, "actionString":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1368
    const-string/jumbo v0, "ACTION_SEND"

    .line 1377
    .local v0, "actionString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;->onButtonClick(Ljava/lang/String;)Z

    .line 1363
    .end local v0    # "actionString":Ljava/lang/String;
    :cond_0
    return-void

    .line 1369
    .local v0, "actionString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1370
    const-string/jumbo v0, "ACTION_SEARCH"

    .local v0, "actionString":Ljava/lang/String;
    goto :goto_0

    .line 1371
    .local v0, "actionString":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1372
    const-string/jumbo v0, "ACTION_GO"

    .local v0, "actionString":Ljava/lang/String;
    goto :goto_0

    .line 1374
    .local v0, "actionString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "ACTION_DONE"

    .local v0, "actionString":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendHelpModeResult(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 1334
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHelpModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1333
    :cond_0
    return-void
.end method

.method private sendMMSDataDelete(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1339
    :cond_0
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1346
    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1347
    const-string/jumbo v3, "command"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, "commandTxt":Ljava/lang/String;
    const-string/jumbo v3, "result"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1350
    .local v2, "text":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1351
    .local v0, "cmd":I
    const-string/jumbo v3, "action_done_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1352
    const/4 v0, 0x0

    .line 1359
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    invoke-interface {v3, v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;->onEvent(ILjava/lang/CharSequence;)Z

    .line 1345
    .end local v0    # "cmd":I
    .end local v1    # "commandTxt":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void

    .line 1353
    .restart local v0    # "cmd":I
    .restart local v1    # "commandTxt":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "action_cancel_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1354
    const/4 v0, 0x1

    goto :goto_0

    .line 1355
    :cond_3
    const-string/jumbo v3, "action_composing_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1356
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setupInRuntime()Z
    .locals 8

    .prologue
    .line 574
    const/4 v4, 0x1

    .line 576
    .local v4, "result":Z
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v5

    if-nez v5, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 578
    const/4 v5, 0x1

    return v5

    .line 582
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 583
    .local v3, "mCurrentUserId":I
    const-string/jumbo v0, ""

    .line 584
    .local v0, "CURRENT_SERVICE_NAME":Ljava/lang/String;
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " setupInRuntime userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    sparse-switch v3, :sswitch_data_0

    .line 625
    :try_start_0
    const-string/jumbo v0, "directpeninputmanagerservice"

    .line 629
    :goto_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 630
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 631
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupInRuntime binder, binder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", CURRENT_SERVICE_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-nez v5, :cond_1

    .line 634
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Failed to get DirectPenInputService"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    const/4 v4, 0x0

    .line 642
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    .line 644
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 646
    return v4

    .line 589
    :sswitch_0
    :try_start_1
    const-string/jumbo v0, "directpeninputmanagerserviceknox0"

    goto :goto_0

    .line 592
    :sswitch_1
    const-string/jumbo v0, "directpeninputmanagerserviceknox1"

    goto :goto_0

    .line 595
    :sswitch_2
    const-string/jumbo v0, "directpeninputmanagerserviceknox2"

    goto :goto_0

    .line 598
    :sswitch_3
    const-string/jumbo v0, "directpeninputmanagerserviceknox3"

    goto :goto_0

    .line 601
    :sswitch_4
    const-string/jumbo v0, "directpeninputmanagerserviceknox4"

    goto :goto_0

    .line 604
    :sswitch_5
    const-string/jumbo v0, "directpeninputmanagerserviceknox5"

    goto :goto_0

    .line 607
    :sswitch_6
    const-string/jumbo v0, "directpeninputmanagerservicerestricted0"

    goto :goto_0

    .line 610
    :sswitch_7
    const-string/jumbo v0, "directpeninputmanagerservicerestricted1"

    goto :goto_0

    .line 613
    :sswitch_8
    const-string/jumbo v0, "directpeninputmanagerservicerestricted2"

    goto :goto_0

    .line 616
    :sswitch_9
    const-string/jumbo v0, "directpeninputmanagerservicerestricted3"

    goto :goto_0

    .line 619
    :sswitch_a
    const-string/jumbo v0, "directpeninputmanagerservicerestricted4"

    goto :goto_0

    .line 622
    :sswitch_b
    const-string/jumbo v0, "directpeninputmanagerservicerestricted5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get ActivityManager :: get default binder to avoid error, mWBManager:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v4, 0x0

    goto :goto_1

    .line 587
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method private showDirectPenInput()Z
    .locals 3

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v1

    return v1

    .line 1623
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1624
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1625
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1626
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 1628
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v1

    return v1
.end method

.method private showDirectPenInputCue()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1510
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 1513
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1514
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue because mParentView is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1519
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v6

    .line 1520
    .local v2, "isShown":Z
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1521
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v2

    .line 1525
    :cond_2
    if-nez v2, :cond_3

    .line 1526
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-void

    .line 1530
    :cond_3
    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    .line 1531
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1532
    .local v4, "visualRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1533
    .local v3, "viewRect":Landroid/graphics/Rect;
    const/16 v0, 0x64

    .line 1534
    .local v0, "bottomOffset":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, -0x64

    if-lt v5, v7, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_7

    .line 1535
    :cond_4
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue. viewRect is smaller than wndRect"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string/jumbo v5, "DirectPenInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "viewRect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void

    .line 1531
    .end local v0    # "bottomOffset":I
    .end local v3    # "viewRect":Landroid/graphics/Rect;
    .end local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1532
    .restart local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 1542
    .end local v4    # "visualRect":Landroid/graphics/Rect;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->createPopupCue()V

    .line 1544
    const/4 v1, 0x0

    .line 1545
    .local v1, "cueType":I
    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v5, v6, :cond_9

    .line 1546
    iget-boolean v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v5, :cond_8

    .line 1547
    const/4 v1, 0x2

    .line 1556
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/directpeninput/PopupCue;->show(ILandroid/view/MotionEvent;)V

    .line 1559
    const-string/jumbo v5, "HOVERED"

    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1507
    return-void

    .line 1549
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 1552
    :cond_9
    const/4 v1, 0x3

    goto :goto_2
.end method

.method private showDirectPenInput_dialog()Z
    .locals 33

    .prologue
    .line 1635
    const/16 v30, 0x0

    .line 1637
    .local v30, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1638
    const/4 v2, 0x0

    return v2

    .line 1641
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1642
    .local v6, "wndToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1644
    .local v5, "appToken":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 1645
    .local v7, "wndRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 1646
    .local v8, "scrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 1648
    .local v7, "wndRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 1654
    .end local v7    # "wndRect":Landroid/graphics/Rect;
    .end local v8    # "scrRect":Landroid/graphics/Rect;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1655
    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1656
    .local v10, "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1657
    .local v11, "ei":Landroid/view/inputmethod/EditorInfo;
    new-instance v32, Landroid/view/inputmethod/EditorInfo;

    invoke-direct/range {v32 .. v32}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1659
    .local v32, "upView_ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v29, v0

    check-cast v29, Landroid/widget/EditText;

    .line 1661
    .local v29, "parent":Landroid/widget/EditText;
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v10}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 1662
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    .line 1665
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1667
    const/16 v27, 0x0

    .line 1668
    .local v27, "flagPrevNext":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v31

    .line 1669
    .local v31, "upView":Landroid/view/View;
    if-eqz v31, :cond_2

    .line 1670
    move-object/from16 v0, v31

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, v31

    .line 1671
    nop

    nop

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1672
    move-object/from16 v0, v32

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1673
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1674
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1675
    .local v28, "grandParent":Landroid/view/ViewParent;
    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/widget/NumberPicker;

    :goto_3
    if-nez v2, :cond_2

    .line 1676
    const/16 v27, 0x1

    .line 1683
    .end local v28    # "grandParent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v25

    .line 1684
    .local v25, "downView":Landroid/view/View;
    if-eqz v25, :cond_3

    .line 1685
    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1687
    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1688
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1689
    or-int/lit8 v27, v27, 0x2

    .line 1695
    :cond_3
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 1696
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "flagPrevNext"

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1700
    .end local v25    # "downView":Landroid/view/View;
    .end local v27    # "flagPrevNext":I
    .end local v29    # "parent":Landroid/widget/EditText;
    .end local v31    # "upView":Landroid/view/View;
    :cond_4
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1704
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 1706
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "hasFocus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1710
    :cond_6
    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v2, 0xff0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 1711
    const-string/jumbo v2, "com.sec.android.app.sbrowser"

    iget-object v3, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1710
    if-eqz v2, :cond_7

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1715
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    .line 1719
    :goto_4
    const/4 v9, 0x0

    .line 1720
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

    .line 1734
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1737
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getModeFlag()I

    move-result v12

    .line 1738
    .local v12, "flag":I
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_8

    .line 1740
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    .line 1744
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    invoke-interface {v4}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1745
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    .line 1744
    invoke-interface/range {v2 .. v13}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;IZ)V

    .line 1746
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDirectPenInput "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1750
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Report current DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->registerPositionChangeListener()V

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_9

    .line 1757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1761
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 1762
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    const/16 v30, 0x1

    .line 1833
    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "flag":I
    .end local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_a
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v14, 0x3e8

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1835
    return v30

    .line 1647
    .local v7, "wndRect":Landroid/graphics/Rect;
    .restart local v8    # "scrRect":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_0

    .line 1648
    .local v7, "wndRect":Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1649
    .local v7, "wndRect":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 1651
    .local v7, "wndRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v8

    .local v8, "scrRect":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 1650
    .local v7, "wndRect":Landroid/graphics/Rect;
    .local v8, "scrRect":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_7

    .line 1651
    .local v7, "wndRect":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_8

    .line 1675
    .end local v7    # "wndRect":Landroid/graphics/Rect;
    .end local v8    # "scrRect":Landroid/graphics/Rect;
    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .restart local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v27    # "flagPrevNext":I
    .restart local v28    # "grandParent":Landroid/view/ViewParent;
    .restart local v29    # "parent":Landroid/widget/EditText;
    .restart local v31    # "upView":Landroid/view/View;
    .restart local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1712
    .end local v27    # "flagPrevNext":I
    .end local v28    # "grandParent":Landroid/view/ViewParent;
    .end local v29    # "parent":Landroid/widget/EditText;
    .end local v31    # "upView":Landroid/view/View;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    .line 1713
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    goto/16 :goto_4

    .line 1723
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :cond_12
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1724
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 1725
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 1765
    .restart local v12    # "flag":I
    :catch_0
    move-exception v26

    .line 1766
    .local v26, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 1769
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 1771
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 1773
    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "flag":I
    .end local v26    # "e":Landroid/os/RemoteException;
    .end local v32    # "upView_ei":Landroid/view/inputmethod/EditorInfo;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1774
    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1776
    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1777
    .restart local v11    # "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 1778
    const/4 v2, 0x2

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1782
    :goto_9
    const/4 v2, 0x6

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    if-eqz v2, :cond_14

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    iget-object v3, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;->onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1791
    :cond_14
    const/4 v9, 0x0

    .line 1792
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

    .line 1800
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1801
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    .line 1803
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getModeFlag()I

    move-result v12

    .line 1806
    .restart local v12    # "flag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->hideCursorControllers(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1807
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "hideCursorControllers "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    invoke-interface {v2}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 1812
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardTemplate:I

    move/from16 v21, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    .line 1811
    invoke-interface/range {v13 .. v24}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 1813
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDirectPenInput. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1817
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Report current DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1821
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 1780
    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    .end local v12    # "flag":I
    :cond_16
    const/4 v2, 0x1

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_9

    .line 1795
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    :cond_17
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1796
    .local v9, "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 1797
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 1822
    .restart local v12    # "flag":I
    :catch_1
    move-exception v26

    .line 1823
    .restart local v26    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 1826
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    .line 1828
    const/4 v2, 0x0

    return v2
.end method

.method private startDirectPenInputService()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2201
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2203
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2204
    .local v3, "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2206
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.directpeninputservice"

    .line 2207
    const-string/jumbo v6, "com.samsung.android.directpeninputservice.DirectPenInputServiceStarter"

    .line 2206
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2208
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2209
    .local v0, "context":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 2210
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :cond_1
    :goto_0
    return-void

    .line 2212
    :catch_0
    move-exception v1

    .line 2213
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2216
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2218
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2219
    .restart local v3    # "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2221
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    .line 2222
    const-string/jumbo v6, "com.sec.android.inputmethod.SamsungKeypad"

    .line 2221
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2223
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2224
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    if-eqz v0, :cond_1

    .line 2225
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2227
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_1
    move-exception v1

    .line 2228
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2232
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2233
    .restart local v3    # "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2235
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    .line 2236
    const-string/jumbo v6, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    .line 2235
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2237
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2238
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    if-eqz v0, :cond_1

    .line 2239
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2241
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_2
    move-exception v1

    .line 2242
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private unregisterPositionChangeListener()V
    .locals 3

    .prologue
    .line 2333
    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2335
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2336
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDPIPositionListenerEnalbed(Z)V

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2341
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2342
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2343
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2065
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v1, :cond_0

    .line 2066
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    return v0

    .line 2069
    :cond_0
    return v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1025
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Finish DirectPenInput"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 1029
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void

    .line 1032
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    .line 1024
    return-void
.end method

.method public dismiss(Z)V
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 1042
    const-string/jumbo v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorType()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    return v0
.end method

.method public getExpectedTargetDPIRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getTargetDPIRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDPIRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2153
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2154
    return v3

    .line 2157
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    if-eqz v1, :cond_1

    .line 2158
    return v3

    .line 2161
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2162
    .local v0, "action":I
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 2163
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "handleMotionEvent ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    .line 2165
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2166
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->startDirectPenInputService()V

    .line 2173
    :cond_2
    :goto_0
    invoke-direct {p0, v4, v3, p2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v1

    return v1

    .line 2168
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 2169
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "handleMotionEvent ACTION_HOVER_EXIT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2103
    if-nez p1, :cond_2

    .line 2105
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v3}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2107
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 2111
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2112
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2113
    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    .line 2140
    :cond_1
    :goto_0
    return v3

    .line 2126
    :cond_2
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2128
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v3}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    .line 2130
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 2135
    :cond_3
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2136
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Update."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 8
    .param p1, "what"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 828
    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPositionChanged code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_8

    .line 831
    const/4 v2, 0x0

    .line 832
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 833
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v6, :cond_3

    .line 834
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 835
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 842
    .local v1, "scrRect":Landroid/graphics/Rect;
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    .line 843
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 844
    :cond_0
    return-void

    .line 834
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 835
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 837
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_3
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 838
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "scrRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 837
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_3

    .line 838
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 847
    .local v1, "scrRect":Landroid/graphics/Rect;
    :cond_6
    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update Position. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_8

    .line 851
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 852
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v6, :cond_8

    .line 853
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x12c

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_8
    :goto_5
    return-void

    .line 857
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "receivedClientID"    # I

    .prologue
    .line 1189
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResultReceived "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " receivedClientID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1190
    const-string/jumbo v8, " current ClientID : "

    .line 1189
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1190
    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1189
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    return-void

    .line 1196
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 1197
    return-void

    .line 1201
    :cond_1
    const-string/jumbo v6, "service_cb_client_changed"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    .line 1202
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_4

    .line 1206
    iget-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v6, :cond_2

    .line 1207
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 1208
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    .line 1211
    :cond_2
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1212
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 1213
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    .line 1217
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    .line 1218
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1222
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1223
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

    .line 1224
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Report current DPI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    .line 1228
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    .line 1232
    :cond_6
    const-string/jumbo v6, "service_cb_inflate_done"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 1233
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 1238
    :cond_7
    const-string/jumbo v6, "service_cb_writing_done"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1239
    .local v5, "resultValue":I
    if-lez v5, :cond_a

    .line 1240
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResultReceived SERVICE_CB_WRITING_DONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    .line 1244
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_a

    .line 1246
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_10

    const/4 v2, 0x1

    .line 1247
    .local v2, "isShown":Z
    :goto_0
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_8

    .line 1248
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v2

    .line 1251
    :cond_8
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v6, :cond_9

    if-eqz v2, :cond_9

    .line 1252
    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    const/4 v1, 0x1

    .line 1253
    .local v1, "initBuffer":Z
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    .line 1257
    .end local v1    # "initBuffer":Z
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    .line 1258
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1263
    .end local v2    # "isShown":Z
    :cond_a
    const-string/jumbo v6, "service_cb_perform_editor_action"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1264
    .local v0, "editorAction":I
    if-ltz v0, :cond_c

    .line 1265
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b

    .line 1266
    const-string/jumbo v6, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResultReceived SERVICE_CB_DATA_CHANGED "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    .line 1268
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->performDPIEditorAction(I)V

    .line 1269
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    .line 1273
    :cond_b
    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendActionButtonResult(I)V

    .line 1277
    :cond_c
    const-string/jumbo v6, "service_cb_closed"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e

    .line 1278
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const-string/jumbo v6, "service_cb_init_text"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1281
    .local v3, "modifedText":Ljava/lang/CharSequence;
    const-string/jumbo v6, "service_cb_closed"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1283
    .local v4, "modifyBuffer":I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    .line 1284
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    .line 1288
    :cond_d
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 1291
    const-string/jumbo v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1294
    const-string/jumbo v6, "CLOSED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 1298
    .end local v3    # "modifedText":Ljava/lang/CharSequence;
    .end local v4    # "modifyBuffer":I
    :cond_e
    const-string/jumbo v6, "service_cb_private"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f

    .line 1300
    const-string/jumbo v6, "service_cb_private"

    invoke-direct {p0, v6, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 1187
    :cond_f
    return-void

    .line 1246
    .end local v0    # "editorAction":I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1252
    .restart local v2    # "isShown":Z
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "initBuffer":Z
    goto/16 :goto_1
.end method

.method public onTextDeleted(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 1163
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextDeleted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_6

    .line 1166
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1167
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v4, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextDeleted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_1
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 1170
    check-cast v0, Landroid/text/Editable;

    .line 1171
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    if-ge v2, v3, :cond_3

    .line 1172
    return-void

    .end local v0    # "editable":Landroid/text/Editable;
    :cond_2
    move-object v2, v3

    .line 1167
    goto :goto_0

    .line 1173
    .restart local v0    # "editable":Landroid/text/Editable;
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, p2, :cond_4

    .line 1174
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextDeleted() : end is out of bound textBuffer length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void

    .line 1177
    :cond_4
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1180
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_5
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1161
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_6
    return-void
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 7
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "nextCursor"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1113
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v4, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 1117
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v2, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1120
    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    .line 1113
    goto :goto_0

    .line 1124
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 1125
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1126
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_5
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 1129
    check-cast v0, Landroid/text/Editable;

    .line 1130
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 1131
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : where is out of bound editor length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void

    .line 1133
    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, p3, :cond_7

    .line 1134
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int p3, v2, v3

    .line 1135
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : nextCursor position is more than total text length, set nextCursor to end of text"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_7
    if-eqz p2, :cond_8

    .line 1138
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1139
    invoke-static {v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1144
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1145
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    .line 1149
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1150
    const-string/jumbo v2, "TEXT_INSERTED"

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1111
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_a
    return-void
.end method

.method public onUpdateDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1309
    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUpdateDialog code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_1

    .line 1311
    const/4 v2, 0x0

    .line 1312
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1313
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v7, :cond_4

    .line 1314
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1315
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1321
    .local v1, "scrRect":Landroid/graphics/Rect;
    :goto_2
    sget-boolean v3, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DirectPenInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update onUpdateDialog. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_1

    .line 1325
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    :goto_3
    return-void

    .line 1314
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1315
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 1317
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1318
    .local v2, "wndRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "scrRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 1317
    .local v1, "scrRect":Landroid/graphics/Rect;
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 1318
    .local v2, "wndRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_5

    .line 1327
    .local v1, "scrRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    .line 779
    return-void
.end method

.method public setBoardTemplate(I)V
    .locals 0
    .param p1, "template"    # I

    .prologue
    .line 820
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardTemplate:I

    .line 819
    return-void
.end method

.method public setBoardType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 678
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The board type should be one of TYPE_BOARD_EDITOR or TYPE_BOARD_TEMPLATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    .line 677
    return-void
.end method

.method public setEditorType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 791
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    .line 790
    return-void
.end method

.method public setImageWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    .line 737
    return-void
.end method

.method public setImageWritingListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

    .prologue
    .line 914
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setImageWritingEnabled(Z)V

    .line 916
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mImageWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

    .line 912
    return-void

    .line 914
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMathWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMathWritingEnabled:Z

    .line 749
    return-void
.end method

.method public setOnButtonClickListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    .prologue
    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    .line 772
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    .line 770
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 657
    if-nez p1, :cond_0

    .line 658
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    .line 661
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    .line 662
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    .line 663
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .line 664
    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    .line 656
    :goto_0
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public setServiceEventListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    .prologue
    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    .line 761
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    .line 759
    return-void
.end method

.method public setTextUpdateListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    .line 926
    return-void
.end method

.method public setTextWritingListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    .line 902
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public showAsDialog()Z
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method public showPopup()V
    .locals 4

    .prologue
    .line 997
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v1, 0x0

    .line 1001
    .local v1, "style":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->showPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Can not start showPopup, RemoteException happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDirectPenInputServiceByForce()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2253
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2255
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2256
    .local v3, "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2258
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.directpeninputservice"

    .line 2259
    const-string/jumbo v6, "com.samsung.android.directpeninputservice.DirectPenInputServiceStarter"

    .line 2258
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2260
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2261
    .local v0, "context":Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 2262
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :cond_1
    :goto_0
    return-void

    .line 2264
    :catch_0
    move-exception v1

    .line 2265
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2269
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 2270
    .restart local v3    # "mCurrentUserId":I
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2272
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    .line 2273
    const-string/jumbo v6, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    .line 2272
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2274
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2275
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    if-eqz v0, :cond_1

    .line 2276
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2278
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mCurrentUserId":I
    :catch_1
    move-exception v1

    .line 2279
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DirectPenInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting directpeninput service failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
