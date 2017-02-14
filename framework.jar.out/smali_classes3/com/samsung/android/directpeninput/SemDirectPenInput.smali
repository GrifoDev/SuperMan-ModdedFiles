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

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/view/View;FF)Z
    .locals 1

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

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/directpeninput/SemDirectPenInput;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mShowCnt:I

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    iput v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceCallback:Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->initVariable()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setParentView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetDirectPenInput(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    goto :goto_0
.end method

.method private canStartDirectPenInput(Z)Z
    .locals 15

    iget-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    if-nez p1, :cond_0

    return v6

    :cond_0
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_1

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "pen_writing_buddy"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v6, 0x1

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

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/EditText;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v12, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_3

    move-object v11, v3

    nop

    nop

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

    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_3

    const/4 v6, 0x0

    :cond_3
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v12

    iput v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    if-eqz v6, :cond_4

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_4

    instance-of v12, v4, Landroid/view/ViewGroup;

    if-eqz v12, :cond_4

    move-object v12, v4

    nop

    nop

    invoke-virtual {v12}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v6, 0x0

    :cond_4
    if-eqz v6, :cond_8

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v12, v12, Landroid/widget/EditText;

    if-eqz v12, :cond_8

    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v12, 0xf

    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v12, 0xff0

    const/16 v12, 0x80

    if-eq v7, v12, :cond_5

    const/16 v12, 0x90

    if-ne v7, v12, :cond_e

    :cond_5
    :goto_5
    const/4 v6, 0x0

    :cond_6
    if-eqz v6, :cond_7

    iget-object v12, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v12, :cond_7

    iget-object v12, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v13, "com.samsung.android/disableDirectPenInput"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v6, 0x0

    :cond_7
    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    iget v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v13, 0x20000

    and-int/2addr v12, v13

    iput v12, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v12, :cond_f

    const/4 v12, 0x1

    :goto_6
    iput-boolean v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v6, :cond_8

    iget-boolean v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v12, :cond_11

    :cond_8
    :goto_7
    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

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

    return v6

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_d
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto/16 :goto_4

    :cond_e
    const/16 v12, 0xe0

    if-eq v7, v12, :cond_5

    const/4 v12, 0x2

    if-ne v1, v12, :cond_6

    const/16 v12, 0x10

    if-ne v7, v12, :cond_6

    goto :goto_5

    :cond_f
    const/4 v12, 0x0

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    goto :goto_6

    :cond_11
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_9
    invoke-direct {p0, v12}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float v9, v12, v13

    const v12, 0x3e4ccccd    # 0.2f

    cmpg-float v12, v9, v12

    if-gez v12, :cond_8

    const/4 v6, 0x0

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

    :cond_12
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_8

    :cond_13
    iget-object v12, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_9
.end method

.method private canStartTemplateDirectPenInput(Z)Z
    .locals 9

    const/4 v8, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getWindowMode()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mWindowMode:I

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, v1

    nop

    nop

    invoke-virtual {v5}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_3
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_3

    const/4 v2, 0x0

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

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v5}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    iput-object v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanStartDirectPenInput:Z

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

    return v2

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_3

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4
.end method

.method private checkDirectPenInputServcie()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

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

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Cannot find DirectPenInputSerivce"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    return v4
.end method

.method private checkUseSamsungIME()Z
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsForceMode:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Can not find IMM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private closeDirectPenInput(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Can not close DirectPenInput, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3

    move-object v0, p2

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

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

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v1, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private dismissPopupCue(Z)Z
    .locals 3

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "dismissPopupCue()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    return-object v0

    :cond_1
    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Attempting to create Handler from background thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getModeFlag()I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMathWritingEnabled:Z

    if-eqz v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHelpModeEnabled:Z

    if-eqz v4, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v4, "isMmsMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_3
    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    :cond_4
    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x10

    const-string/jumbo v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return v1
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    filled-new-array {v4, v4}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

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

    :cond_0
    return-object v1
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    filled-new-array {v4, v4}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

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

    :cond_0
    return-object v1
.end method

.method private getTargetDPIRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    check-cast v4, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    add-int/2addr v9, v14

    if-gez v14, :cond_0

    if-gez v9, :cond_0

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

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

    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    rem-int/2addr v13, v12

    add-int/2addr v3, v13

    if-gez v13, :cond_2

    if-gez v3, :cond_2

    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    rem-int/2addr v5, v12

    if-lez v5, :cond_3

    if-le v5, v3, :cond_7

    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    :cond_4
    :goto_4
    move-object v10, v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    goto :goto_4

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

    :cond_a
    return-object v6
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    instance-of v15, v11, Landroid/view/View;

    if-eqz v15, :cond_9

    move-object v4, v11

    check-cast v4, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v14, v15

    add-int/2addr v9, v14

    if-gez v14, :cond_0

    if-gez v9, :cond_0

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    if-le v15, v9, :cond_5

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v16, v16, v9

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

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

    add-int v15, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v16, v2, v1

    sub-int v15, v15, v16

    neg-int v1, v15

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v15

    float-to-int v13, v15

    rem-int/2addr v13, v12

    add-int/2addr v3, v13

    if-gez v13, :cond_2

    if-gez v3, :cond_2

    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v5

    rem-int/2addr v5, v12

    if-lez v5, :cond_3

    if-le v5, v3, :cond_7

    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int v16, v5, v3

    add-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    :cond_3
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    sub-int v8, v15, v5

    add-int v15, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v16, v8, v7

    sub-int v15, v15, v16

    neg-int v7, v15

    :cond_4
    :goto_4
    move-object v10, v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v15

    sub-int/2addr v9, v15

    goto :goto_1

    :cond_6
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int v16, v2, v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    sub-int/2addr v3, v5

    goto :goto_3

    :cond_8
    iget v15, v6, Landroid/graphics/Rect;->right:I

    add-int v16, v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    iput v15, v6, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    goto :goto_4

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

    :cond_a
    return-object v6
.end method

.method private getWindowMode()I
    .locals 1

    const/high16 v0, 0x1000000

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextInserted(ILjava/lang/CharSequence;I)V

    goto :goto_0

    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onTextDeleted(II)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionChanged(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInputCue()V

    goto :goto_0

    :pswitch_6
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->onUpdateDialog()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionCheck(I)V

    goto :goto_0

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

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setBoardType(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setEditorType(I)V

    return-void
.end method

.method private isDPIShowing()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordInputType(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    :cond_3
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x81

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/16 v3, 0x91

    if-eq v2, v3, :cond_1

    return v4
.end method

.method private notifyPositionCheck(I)V
    .locals 7

    const/4 v6, 0x0

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

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

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

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pointInView(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

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

    :cond_0
    return v0
.end method

.method private registerEventListener(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private registerPositionChangeListener()V
    .locals 3

    const/4 v2, 0x1

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDPIPositionListenerEnalbed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private resetPenPointerIcon()V
    .locals 3

    const/16 v1, 0x4e21

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetState()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

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

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    iput v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 10

    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    move v4, p4

    if-ne v1, p4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

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

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-nez v6, :cond_d

    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v6, 0x9

    if-ne v0, v6, :cond_8

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_ENTER_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x96

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    :cond_5
    :goto_2
    const/4 v6, 0x7

    if-ne v0, v6, :cond_6

    const/4 v5, 0x0

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

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

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v6, 0x0

    return v6

    :cond_8
    const/16 v6, 0xa

    if-ne v0, v6, :cond_b

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_1"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    if-eqz v2, :cond_a

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v2, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_2"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_HOVER_EXIT_4"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x28

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_b
    if-nez v0, :cond_c

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_DOWN"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartDirectPenInput(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "ACTION_UP"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x1e

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_d
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v6, 0x9

    if-ne v0, v6, :cond_e

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_e

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "Reset state"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    :cond_e
    const/4 v6, 0x2

    if-ne p1, v6, :cond_6

    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    :cond_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :goto_6
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    :cond_10
    const-string/jumbo v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "OPENED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x96

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "Can not find IMM"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_5
.end method

.method private scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
    .locals 8

    invoke-static {p3}, Lcom/samsung/android/directpeninput/SemDirectPenInput$EventChecker;->isDuplicated(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

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

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-nez v4, :cond_d

    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_ENTER"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x96

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    :cond_3
    :goto_1
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

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

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v4, 0x0

    return v4

    :cond_6
    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_MOVE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_7
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->pointInView(FF)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v1, :cond_9

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_2"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_3"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_HOVER_EXIT_4"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_b
    if-nez v0, :cond_c

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->canStartTemplateDirectPenInput(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "ACTION_UP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1e

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    if-ne p1, v4, :cond_e

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "Reset state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mStateResetCnt:I

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput$7;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Handler;)V

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput(Landroid/os/ResultReceiver;)Z

    :goto_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

    const-string/jumbo v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "OPENED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetPenPointerIcon()V

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v4, "DirectPenInput"

    const-string/jumbo v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private sendActionButtonResult(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string/jumbo v0, "ACTION_SEND"

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;->onButtonClick(Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string/jumbo v0, "ACTION_SEARCH"

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string/jumbo v0, "ACTION_GO"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ACTION_DONE"

    goto :goto_0
.end method

.method private sendHelpModeResult(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHelpModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sendMMSDataDelete(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 5

    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo v3, "command"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "result"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    const-string/jumbo v3, "action_done_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    invoke-interface {v3, v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;->onEvent(ILjava/lang/CharSequence;)Z

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v3, "action_cancel_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "action_composing_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setupInRuntime()Z
    .locals 8

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string/jumbo v0, ""

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

    sparse-switch v3, :sswitch_data_0

    :try_start_0
    const-string/jumbo v0, "directpeninputmanagerservice"

    :goto_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

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

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-nez v5, :cond_1

    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Failed to get DirectPenInputService"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    return v4

    :sswitch_0
    :try_start_1
    const-string/jumbo v0, "directpeninputmanagerserviceknox0"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "directpeninputmanagerserviceknox1"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "directpeninputmanagerserviceknox2"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "directpeninputmanagerserviceknox3"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "directpeninputmanagerserviceknox4"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "directpeninputmanagerserviceknox5"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "directpeninputmanagerservicerestricted0"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "directpeninputmanagerservicerestricted1"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "directpeninputmanagerservicerestricted2"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "directpeninputmanagerservicerestricted3"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "directpeninputmanagerservicerestricted4"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "directpeninputmanagerservicerestricted5"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

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

    const/4 v4, 0x0

    goto :goto_1

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

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->showDirectPenInput_dialog()Z

    move-result v1

    return v1
.end method

.method private showDirectPenInputCue()V
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v5, :cond_0

    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue because mParentView is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v6

    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    const/16 v0, 0x64

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

    :cond_4
    const-string/jumbo v5, "DirectPenInput"

    const-string/jumbo v6, "Caencel to show directpeninput cue. viewRect is smaller than wndRect"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    return-void

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->createPopupCue()V

    const/4 v1, 0x0

    iget v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v5, v6, :cond_9

    iget-boolean v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMultiLineEditor:Z

    if-eqz v5, :cond_8

    const/4 v1, 0x2

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/directpeninput/PopupCue;->show(ILandroid/view/MotionEvent;)V

    const-string/jumbo v5, "HOVERED"

    invoke-direct {p0, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    goto :goto_2
.end method

.method private showDirectPenInput_dialog()Z
    .locals 33

    const/16 v30, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

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

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    new-instance v32, Landroid/view/inputmethod/EditorInfo;

    invoke-direct/range {v32 .. v32}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v29, v0

    check-cast v29, Landroid/widget/EditText;

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v10}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_2

    move-object/from16 v0, v31

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, v31

    nop

    nop

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    move-object/from16 v0, v32

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/widget/NumberPicker;

    :goto_3
    if-nez v2, :cond_2

    const/16 v27, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->semIsDirectPenInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isPasswordInputType(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    or-int/lit8 v27, v27, 0x2

    :cond_3
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "flagPrevNext"

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    iget-object v2, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "hasFocus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v2, 0xff0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "com.sec.android.app.sbrowser"

    iget-object v3, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    :goto_4
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

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

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getModeFlag()I

    move-result v12

    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismissPopupCue(Z)Z

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

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    invoke-interface/range {v2 .. v13}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;IZ)V

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

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

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->registerPositionChangeListener()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->hideCursorControllers()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v30, 0x1

    :cond_a
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v14, 0x3e8

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v30

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

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

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    goto/16 :goto_4

    :cond_12
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    :catch_0
    move-exception v26

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

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    const/16 v30, 0x0

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    new-instance v10, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    new-instance v11, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v11}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/4 v2, 0x2

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_9
    const/4 v2, 0x6

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    iget-object v3, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;->onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :cond_14
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v9

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

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getModeFlag()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->hideCursorControllers(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "hideCursorControllers "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-interface/range {v13 .. v24}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

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

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v30, 0x1

    goto/16 :goto_6

    :cond_16
    const/4 v2, 0x1

    iput v2, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_9

    :cond_17
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    :catch_1
    move-exception v26

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

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->resetState()V

    const/4 v2, 0x0

    return v2
.end method

.method private startDirectPenInputService()V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

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

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.directpeninputservice"

    const-string/jumbo v6, "com.samsung.android.directpeninputservice.DirectPenInputServiceStarter"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

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

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkUseSamsungIME()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

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

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    const-string/jumbo v6, "com.sec.android.inputmethod.SamsungKeypad"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

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

    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

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

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    const-string/jumbo v6, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

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

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDPIPositionListenerEnalbed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    return v0

    :cond_0
    return v1
.end method

.method public dismiss()V
    .locals 2

    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Finish DirectPenInput"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 3

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

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    return v0
.end method

.method public getExpectedTargetDPIRect()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getTargetDPIRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDPIRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWaitingHideSoftInput:Z

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "handleMotionEvent ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->startDirectPenInputService()V

    :cond_2
    :goto_0
    invoke-direct {p0, v4, v3, p2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v1

    return v1

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "handleMotionEvent ACTION_HOVER_EXIT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsHoverState:Z

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v3}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPopupCueShowMSGCalled:Z

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-virtual {v0, v3}, Lcom/samsung/android/directpeninput/PopupCue;->dismiss(Z)V

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    :cond_3
    iget v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Update."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->isDPIShowing()Z

    move-result v0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

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

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIgnoreSizeChange:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mInitRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

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

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_3
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4

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

    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v6, :cond_8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mScrRectUpdated:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x12c

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_5
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 9

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

    const-string/jumbo v8, " current ClientID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-nez v6, :cond_1

    return-void

    :cond_1
    const-string/jumbo v6, "service_cb_client_changed"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsCursorBlinkDisabled:Z

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

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->reportCurrentDirectPenInputView(Landroid/view/View;)V

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

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->unregisterPositionChangeListener()V

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    :cond_6
    const-string/jumbo v6, "service_cb_inflate_done"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    :cond_7
    const-string/jumbo v6, "service_cb_writing_done"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a

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

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mCanShowAutoCompletePopup:Z

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_10

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v2

    :cond_8
    iget v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    if-lez v6, :cond_9

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    const/4 v1, 0x1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_a
    const-string/jumbo v6, "service_cb_perform_editor_action"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b

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

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->performDPIEditorAction(I)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsPerformingAction:Z

    :cond_b
    invoke-direct {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendActionButtonResult(I)V

    :cond_c
    const-string/jumbo v6, "service_cb_closed"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e

    const-string/jumbo v6, "DirectPenInput"

    const-string/jumbo v7, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "service_cb_init_text"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "service_cb_closed"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setDPITextBuffer(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyDPITextBuffer(Z)Z

    :cond_d
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->scheduleState(IILandroid/view/MotionEvent;I)Z

    const-string/jumbo v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "CLOSED"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    :cond_e
    const-string/jumbo v6, "service_cb_private"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f

    const-string/jumbo v6, "service_cb_private"

    invoke-direct {p0, v6, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendWatchActionResult(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    :cond_f
    return-void

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public onTextDeleted(II)V
    .locals 6

    const/4 v3, 0x0

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

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

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

    :cond_1
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    if-ge v2, v3, :cond_3

    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, p2, :cond_4

    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextDeleted() : end is out of bound textBuffer length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_6
    return-void
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

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

    :cond_0
    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    invoke-interface {v2, p2}, Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->getDPITextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

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

    :cond_5
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_8

    move-object v0, v1

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, p1, :cond_6

    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : where is out of bound editor length"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, p3, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int p3, v2, v3

    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "onTextInserted() : nextCursor position is more than total text length, set nextCursor to end of text"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p2, :cond_8

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditCount:I

    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "TEXT_INSERTED"

    invoke-direct {p0, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public onUpdateDialog()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

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

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mState:I

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

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

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_5

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DirectPenInput"

    const-string/jumbo v4, "Can not start DirectPenInput, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setBoardTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardTemplate:I

    return-void
.end method

.method public setBoardType(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The board type should be one of TYPE_BOARD_EDITOR or TYPE_BOARD_TEMPLATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mBoardType:I

    return-void
.end method

.method public setEditorType(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mEditorType:I

    return-void
.end method

.method public setImageWritingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsImageWritingEnabled:Z

    return-void
.end method

.method public setImageWritingListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->setImageWritingEnabled(Z)V

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mImageWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ImageWritingListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMathWritingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsMathWritingEnabled:Z

    return-void
.end method

.method public setOnButtonClickListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsReceiveActionButtonEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mButtonClickListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$OnButtonClickListener;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "DirectPenInput"

    const-string/jumbo v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mPopupCue:Lcom/samsung/android/directpeninput/PopupCue;

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iput-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public setServiceEventListner(Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mIsWatchActionEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mServiceEventListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$ServiceEventListener;

    return-void
.end method

.method public setTextUpdateListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextUpdateListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextUpdateListener;

    return-void
.end method

.method public setTextWritingListener(Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mTextWritingListener:Lcom/samsung/android/directpeninput/SemDirectPenInput$TextWritingListener;

    return-void
.end method

.method public show()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showAsDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showPopup()V
    .locals 4

    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mDPIManager:Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    iget v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mViewID:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;->showPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Can not start showPopup, RemoteException happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDirectPenInputServiceByForce()V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->checkDirectPenInputServcie()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

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

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.directpeninputservice"

    const-string/jumbo v6, "com.samsung.android.directpeninputservice.DirectPenInputServiceStarter"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

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

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

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

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.inputmethod"

    const-string/jumbo v6, "com.sec.android.inputmethod.directpeninput.DirectPenInputServiceStarter"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

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
