.class public Lcom/android/incallui/fragment/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/DialpadUi;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/fragment/DialpadFragment$HoverIgnoringLinearLayout;,
        Lcom/android/incallui/fragment/DialpadFragment$DialpadSlidingLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadUi;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;"
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DTMF_STOP_DELAY_MILLIS:I = 0x32

.field private static final THRESHOLD_TIME_FOR_EMPTY_SPACE:I = 0x1388

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private isShowMenuStatus:Z

.field private isTouchButtonPressed:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mDialContainer:Landroid/view/View;

.field private mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

.field protected mDialpad:Landroid/view/View;

.field protected mDialpadView:Lcom/android/incallui/widget/DialpadView;

.field protected mDigitContainer:Landroid/view/View;

.field protected mDtmfDialerField:Landroid/widget/EditText;

.field protected mElapsedTime:Landroid/widget/TextView;

.field protected mElapsedTimeContainer:Landroid/view/View;

.field protected mHideButton:Landroid/widget/ImageView;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsRapidInputMode:Z

.field protected mIsVGAVideoDialpad:Z

.field protected mMenuContainer:Landroid/view/View;

.field protected mOnScreenMenuBtn:Landroid/widget/Button;

.field protected mOnScreenMenuIcon:Landroid/widget/ImageButton;

.field private mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

.field private mPreviouslyProcessedTime:J

.field private mSavedDtmfText:Ljava/lang/String;

.field private mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

.field public mView:Landroid/view/View;

.field protected mVolumeButton:Landroid/widget/Button;

.field protected mVolumeButtonStub:Landroid/view/ViewStub;

.field protected mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

.field private moveAnimator:Landroid/view/animation/TranslateAnimation;

.field protected startPaddingAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    .line 194
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->isShowMenuStatus:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsVGAVideoDialpad:Z

    .line 218
    return-void
.end method

.method private configureKeypadListeners(Landroid/view/View;)V
    .locals 4
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    .line 942
    const/16 v3, 0xc

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 945
    .local v0, "buttonIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 946
    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 947
    .local v1, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 948
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 949
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 950
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 953
    .end local v1    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    :cond_0
    return-void

    .line 942
    :array_0
    .array-data 4
        0x7f100102
        0x7f1000fe
        0x7f1000f4
        0x7f1000f5
        0x7f1000f6
        0x7f1000f7
        0x7f1000f8
        0x7f1000f9
        0x7f1000fa
        0x7f1000fb
        0x7f100101
        0x7f100100
    .end array-data
.end method

.method private getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 496
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 497
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    .line 500
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private menuButtonClicked()V
    .locals 3

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 458
    :goto_0
    return-void

    .line 445
    :cond_0
    const-string v2, "menuButtonClicked: "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 448
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    .line 449
    .local v1, "inCallMenu":Lcom/android/incallui/InCallMenu;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 453
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    goto :goto_0

    .line 456
    :cond_2
    const-string v2, "activity or menu is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postAccessibilityEvent(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 917
    const-string v2, "postAccessibilityEvent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    const/4 v1, 0x0

    .line 920
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x7

    if-gt v2, p1, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 923
    :cond_0
    const/16 v2, 0x12

    if-ne p1, v2, :cond_1

    .line 924
    const-string v1, "#"

    .line 926
    :cond_1
    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    .line 927
    const-string v1, "*"

    .line 929
    :cond_2
    if-nez v1, :cond_4

    .line 939
    :cond_3
    :goto_0
    return-void

    .line 932
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 934
    .local v0, "e":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 935
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 937
    const-string v2, "sent TYPE_ANNOUNCEMENT"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMoreOptionLabelToast()V
    .locals 8

    .prologue
    .line 476
    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v5, :cond_0

    .line 493
    :goto_0
    return-void

    .line 477
    :cond_0
    const-string v5, "showMoreOptionLabelToast"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 480
    .local v0, "mHoverPopupWindow":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 483
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040183

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 484
    .local v4, "toastView":Landroid/view/View;
    const v5, 0x7f100430

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 485
    .local v3, "toastText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    new-instance v2, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 489
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 490
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 491
    const v5, 0x800035

    iget-object v6, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getHeight()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 492
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showVolumeSeekBar()V
    .locals 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public animateShowDialpad()V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

.method public appendDigitsToField(C)V
    .locals 6
    .param p1, "digit"    # C

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 862
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 864
    const-string v2, "Enter empty space"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 867
    :cond_0
    iput-wide v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mPreviouslyProcessedTime:J

    .line 878
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 880
    const-string v2, "clear_dialpad_digits"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 881
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    .line 884
    .end local v0    # "currentTime":J
    :cond_1
    return-void
.end method

.method public clearDigits()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    :cond_0
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    .prologue
    .line 643
    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadHeight()I
    .locals 24

    .prologue
    .line 1147
    const/4 v7, 0x0

    .line 1148
    .local v7, "dialpadHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1150
    .local v15, "realContainerHeight":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 1152
    .local v10, "display":Landroid/view/Display;
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1153
    .local v17, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1156
    .local v6, "density":F
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    .line 1158
    .local v16, "realDensity":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a04e8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1159
    .local v14, "minimumContainer":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00a1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v8, v0

    .line 1160
    .local v8, "dialpadMinimumHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a04f4

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 1161
    .local v11, "elpasedTimeHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a03f0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    .line 1163
    .local v5, "captionHeight":I
    cmpl-float v18, v6, v16

    if-eqz v18, :cond_0

    .line 1164
    sub-int/2addr v15, v5

    .line 1166
    :cond_0
    if-gt v15, v14, :cond_1

    .line 1167
    move v7, v8

    .line 1186
    .end local v5    # "captionHeight":I
    .end local v6    # "density":F
    .end local v8    # "dialpadMinimumHeight":I
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "elpasedTimeHeight":I
    .end local v14    # "minimumContainer":I
    .end local v16    # "realDensity":F
    .end local v17    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return v7

    .line 1169
    .restart local v5    # "captionHeight":I
    .restart local v6    # "density":F
    .restart local v8    # "dialpadMinimumHeight":I
    .restart local v10    # "display":Landroid/view/Display;
    .restart local v11    # "elpasedTimeHeight":I
    .restart local v14    # "minimumContainer":I
    .restart local v16    # "realDensity":F
    .restart local v17    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    sub-int v18, v15, v11

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe6666666666666L    # 0.7

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v7, v0

    goto :goto_0

    .line 1171
    .end local v5    # "captionHeight":I
    .end local v6    # "density":F
    .end local v8    # "dialpadMinimumHeight":I
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "elpasedTimeHeight":I
    .end local v14    # "minimumContainer":I
    .end local v16    # "realDensity":F
    .end local v17    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00a1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    goto :goto_0

    .line 1174
    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    .line 1175
    .local v2, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v3, 0x0

    .line 1176
    .local v3, "buttonsGap":I
    if-eqz v2, :cond_4

    .line 1177
    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getVoiceCallButtonsGap()I

    move-result v3

    .line 1180
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a01eb

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v13, v0

    .line 1181
    .local v13, "indicatorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0007

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v9, v0

    .line 1182
    .local v9, "digitsHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a013b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    .line 1183
    .local v4, "buttonsHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0266

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 1184
    .local v12, "endButtonHeight":I
    sub-int v18, v15, v13

    sub-int v18, v18, v9

    mul-int/lit8 v19, v3, 0x3

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fe999999999999aL    # 0.8

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, v12

    sub-int v7, v18, v4

    goto/16 :goto_0
.end method

.method public getDigitsHeight()I
    .locals 11

    .prologue
    const v10, 0x7f0a04eb

    .line 1190
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 1192
    .local v2, "digitsHeight":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1194
    .local v5, "realContainerHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a04e8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 1195
    .local v4, "minimumContainer":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a03f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 1197
    .local v0, "captionHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1198
    .local v3, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1199
    .local v7, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->density:F

    .line 1201
    .local v1, "density":F
    iget v6, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1203
    .local v6, "realDensity":F
    cmpl-float v8, v1, v6

    if-eqz v8, :cond_0

    .line 1204
    sub-int/2addr v5, v0

    .line 1207
    :cond_0
    if-gt v5, v4, :cond_2

    .line 1208
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 1216
    .end local v0    # "captionHeight":I
    .end local v1    # "density":F
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "minimumContainer":I
    .end local v5    # "realContainerHeight":I
    .end local v6    # "realDensity":F
    .end local v7    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    return v2

    .line 1210
    .restart local v0    # "captionHeight":I
    .restart local v1    # "density":F
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v4    # "minimumContainer":I
    .restart local v5    # "realContainerHeight":I
    .restart local v6    # "realDensity":F
    .restart local v7    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDialpadHeight()I

    move-result v8

    sub-int v2, v5, v8

    goto :goto_0

    .line 1212
    .end local v0    # "captionHeight":I
    .end local v1    # "density":F
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "minimumContainer":I
    .end local v5    # "realContainerHeight":I
    .end local v6    # "realDensity":F
    .end local v7    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1213
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    goto :goto_0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavedDtmfText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSavedDtmfText() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMenuStatus()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->isShowMenuStatus:Z

    return v0
.end method

.method public getUi()Lcom/android/incallui/DialpadUi;
    .locals 0

    .prologue
    .line 648
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getUi()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public hideElapsedTimeContainer()V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const-string v0, "hideElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    :cond_0
    return-void
.end method

.method public hideSoftInput()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1253
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    .line 1255
    .local v1, "isMobileKeyboard":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1258
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    const-string v2, "hideSoftInput()"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1263
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-static {v0, v2}, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->focusOut(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 1264
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1267
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected initVolumePanelLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 1044
    const v0, 0x7f100275

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1048
    const v0, 0x7f10041a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    .line 1049
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1053
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1056
    :cond_1
    new-instance v0, Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    .line 1057
    return-void
.end method

.method public needToShowVolumeButton()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1072
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1073
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 1074
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1075
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 1076
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1077
    .local v0, "bShowVolumeButton":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowVolumeButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 412
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 429
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 433
    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/fragment/DialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/DialpadFragment$1;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_1
    return-void

    .line 414
    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->menuButtonClicked()V

    goto :goto_0

    .line 417
    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showVolumeSeekBar()V

    goto :goto_0

    .line 420
    :sswitch_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 421
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 422
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100273 -> :sswitch_0
        0x7f100277 -> :sswitch_2
        0x7f10041a -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 801
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 803
    iget-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsVGAVideoDialpad:Z

    if-eqz v1, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 808
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 654
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 680
    const-string v1, "onCreateView()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const v1, 0x7f0400d8

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 691
    .local v0, "parent":Landroid/view/View;
    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    .line 692
    return-object v0

    .line 685
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    :cond_1
    const v1, 0x7f0400cd

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    .line 688
    .end local v0    # "parent":Landroid/view/View;
    :cond_2
    const v1, 0x7f0400ce

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 793
    const-string v0, "onDestroyView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    iput-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    .line 795
    iput-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    .line 796
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 797
    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 890
    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 902
    const-string v1, "Notifying dtmf key up."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 906
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    if-eqz v1, :cond_2

    .line 907
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->postAccessibilityEvent(I)V

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p2}, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 912
    :cond_2
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 633
    :pswitch_0
    if-eqz p2, :cond_0

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x7f10028e
        :pswitch_0
    .end packed-switch
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 507
    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 508
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 509
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    if-eqz v7, :cond_0

    .line 511
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 512
    .local v0, "action":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onHover:  event-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 515
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 516
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 517
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    .line 519
    .local v1, "bottom":I
    packed-switch v0, :pswitch_data_0

    .line 536
    .end local v0    # "action":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    :goto_0
    return v9

    .line 522
    .restart local v0    # "action":I
    .restart local v1    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 525
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 526
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 527
    .local v6, "y":I
    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 529
    sget-object v7, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 531
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 564
    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 566
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 567
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey: event-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 583
    .end local v0    # "viewId":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 571
    .restart local v0    # "viewId":I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 463
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 464
    packed-switch v0, :pswitch_data_0

    .line 469
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    :goto_0
    return v3

    .line 466
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showMoreOptionLabelToast()V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x7f100273
        :pswitch_0
    .end packed-switch
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pressed"    # Z

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 544
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    if-nez v1, :cond_0

    .line 546
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const-string v1, "onPressed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 552
    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/incallui/fragment/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/DialpadFragment$2;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 658
    const-string v1, "onResume()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 662
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRapidInputMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    .line 663
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRapidInputMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 667
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showSoftInput()V

    .line 669
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showElapsedTimeContainer()V

    .line 670
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 591
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: event-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 624
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 597
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 600
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    .line 601
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIsRapidInputMode:Z

    if-eqz v1, :cond_2

    .line 603
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 604
    sget-object v1, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/incallui/fragment/DialpadFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/DialpadFragment$3;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 617
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/incallui/fragment/DialpadFragment;->isTouchButtonPressed:Z

    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f100273

    const/4 v6, 0x0

    .line 697
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 699
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100246

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 700
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/DialpadView;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    .line 701
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v4, v6}, Lcom/android/incallui/widget/DialpadView;->setCanDigitsBeEdited(Z)V

    .line 702
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100108

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    .line 703
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100271

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mMenuContainer:Landroid/view/View;

    .line 704
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100276

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    .line 705
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f10010b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    .line 706
    const-string v4, "support_folder_single_lcd"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 707
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 708
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/DialpadView;->setFocusable(Z)V

    .line 709
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 713
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 714
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f1003c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialContainer:Landroid/view/View;

    .line 717
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 718
    new-instance v4, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    .line 719
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/fragment/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 722
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 723
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    .line 727
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v5, "inputType=mobile_call_phone"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 729
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v4, :cond_4

    .line 730
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/DialpadFragment;->configureKeypadListeners(Landroid/view/View;)V

    .line 746
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100199

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 747
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f1000f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 749
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 750
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/DialpadFragment;->initVolumePanelLayout(Landroid/view/View;)V

    .line 755
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_5

    .line 756
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 760
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f100277

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    .line 761
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    .line 762
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f1000fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 766
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    const v5, 0x7f1000f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 767
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 768
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_7

    .line 769
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const v5, 0x7f1000f4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 771
    :cond_7
    const/4 v4, 0x3

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 773
    .local v1, "keyIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_9

    .line 774
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 775
    .local v3, "secDialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v3, v7}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 752
    .end local v0    # "i":I
    .end local v1    # "keyIds":[I
    .end local v3    # "secDialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    goto :goto_0

    .line 778
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 779
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v4, Lcom/android/incallui/fragment/DialpadFragment$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/DialpadFragment$4;-><init>(Lcom/android/incallui/fragment/DialpadFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 789
    return-void

    .line 771
    :array_0
    .array-data 4
        0x7f1000fe
        0x7f1000f4
        0x7f1000f5
    .end array-data
.end method

.method public restoreDtmfText(Ljava/lang/String;)V
    .locals 2
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreDtmfText() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1305
    iput-object p1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mSavedDtmfText:Ljava/lang/String;

    .line 1307
    :cond_0
    return-void
.end method

.method public setDtmfText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 957
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 969
    :goto_0
    return-void

    .line 959
    :cond_0
    if-eqz p1, :cond_2

    .line 960
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/DialpadFragment;->setTTS(JLandroid/widget/TextView;)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1004
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1005
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    move v0, p1

    .line 1007
    .local v0, "bShowMenu":Z
    iput-boolean v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->isShowMenuStatus:Z

    .line 1008
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    .line 1009
    .local v2, "inCallMenu":Lcom/android/incallui/InCallMenu;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1010
    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    .line 1012
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1013
    const/4 v0, 0x0

    .line 1016
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_4

    .line 1017
    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1019
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 1020
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    .line 1021
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    .line 1022
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1023
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 1027
    :cond_5
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->needToShowVolumeButton()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/DialpadFragment;->showVolumeButton(Z)V

    goto :goto_0

    .line 1017
    :cond_6
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public setTTS(JLandroid/widget/TextView;)V
    .locals 19
    .param p1, "time"    # J
    .param p3, "elapsedTimeView"    # Landroid/widget/TextView;

    .prologue
    .line 972
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 973
    :cond_0
    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    .line 974
    .local v6, "hours":I
    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 975
    .local v7, "minutes":I
    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    .line 976
    .local v9, "seconds":I
    if-eqz v6, :cond_2

    const/4 v13, 0x1

    .line 978
    .local v13, "usingHour":Z
    :goto_1
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    .line 980
    .local v2, "SRC_TAGS":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 981
    .local v11, "strMinutes":[Ljava/lang/String;
    const v14, 0x7f0902d8

    .line 982
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 981
    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 984
    .local v4, "charMinutes":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 985
    .local v12, "strSeconds":[Ljava/lang/String;
    const v14, 0x7f0902da

    .line 986
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 985
    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 988
    .local v5, "charSeconds":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 989
    .local v8, "sb":Ljava/lang/StringBuffer;
    if-eqz v13, :cond_1

    .line 990
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 991
    .local v10, "strHours":[Ljava/lang/String;
    const v14, 0x7f0902d7

    .line 992
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 991
    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 993
    .local v3, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 996
    .end local v3    # "charHours":Ljava/lang/CharSequence;
    .end local v10    # "strHours":[Ljava/lang/String;
    :cond_1
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 998
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 999
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1000
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 976
    .end local v2    # "SRC_TAGS":[Ljava/lang/String;
    .end local v4    # "charMinutes":Ljava/lang/CharSequence;
    .end local v5    # "charSeconds":Ljava/lang/CharSequence;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "strMinutes":[Ljava/lang/String;
    .end local v12    # "strSeconds":[Ljava/lang/String;
    .end local v13    # "usingHour":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 840
    :cond_0
    if-eqz p1, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupLayout()V
    .locals 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1083
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v5

    .line 1084
    .local v5, "isVideoCall":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    .line 1085
    .local v4, "isInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1086
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1088
    .local v7, "orientation":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupLayout : isInMultiWindowMode = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 1091
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1092
    .local v8, "parent":Landroid/widget/FrameLayout;
    if-eqz v8, :cond_0

    .line 1093
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1094
    .local v9, "parentLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v10, 0x30

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1095
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    .end local v8    # "parent":Landroid/widget/FrameLayout;
    .end local v9    # "parentLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v4, :cond_a

    move v10, v11

    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/DialpadFragment;->showIndicator(Z)V

    .line 1100
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 1101
    if-nez v5, :cond_1

    .line 1102
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1103
    .local v2, "dialpadLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDialpadHeight()I

    move-result v10

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1104
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    .end local v2    # "dialpadLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 1108
    const-string v10, "support_folder_single_lcd"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1117
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showSoftInput()V

    .line 1118
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1119
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    .line 1122
    :cond_3
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v10, :cond_4

    .line 1123
    iget-object v14, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v5, :cond_c

    move v10, v13

    :goto_2
    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :cond_4
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_6

    .line 1127
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    move v13, v11

    :cond_5
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    :cond_6
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v10, :cond_7

    .line 1131
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1133
    :cond_7
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v10, :cond_8

    .line 1134
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 1135
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 1138
    :cond_8
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1139
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1140
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v6

    .line 1141
    .local v6, "needToShowMenu":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->showElapsedTimeContainer()V

    .line 1142
    invoke-virtual {p0, v6}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    .line 1144
    .end local v6    # "needToShowMenu":Z
    :cond_9
    return-void

    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_a
    move v10, v12

    .line 1098
    goto/16 :goto_0

    .line 1111
    :cond_b
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1112
    .local v3, "digitLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getDigitsHeight()I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1113
    iget-object v10, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1123
    .end local v3    # "digitLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    const/4 v10, 0x4

    goto :goto_2
.end method

.method public showElapsedTimeContainer()V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    const-string v0, "showElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :cond_0
    return-void
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1293
    :cond_0
    return-void

    .line 1291
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSoftInput()V
    .locals 6

    .prologue
    .line 1220
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1222
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    .line 1223
    .local v1, "isMobileKeyboard":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1224
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/16 v3, 0x2003

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1225
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 1227
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1229
    invoke-virtual {p0}, Lcom/android/incallui/fragment/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    .line 1230
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1232
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lcom/android/incallui/fragment/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/fragment/DialpadFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/DialpadFragment$5;-><init>(Lcom/android/incallui/fragment/DialpadFragment;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1246
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1247
    iget-object v2, p0, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    goto :goto_0
.end method

.method public showVolumeButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVolumeMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1064
    :cond_0
    if-nez p1, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->dismiss()V

    .line 1069
    :cond_1
    return-void

    .line 1062
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
