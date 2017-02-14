.class public Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;
.super Landroid/app/Fragment;
.source "RemoteMultiPartyCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;


# instance fields
.field private isActivated:Z

.field private mAddCallMenuStub:Landroid/view/ViewStub;

.field private mAddCallMenuText:Landroid/widget/TextView;

.field protected mCallNumberAndLabel:Landroid/view/View;

.field protected mCallStateLabel:Landroid/widget/TextView;

.field protected mCurrentPrimaryCallName:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumber:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

.field protected mCurrentSecondaryCallName:Ljava/lang/String;

.field protected mCurrentSecondaryCallNumber:Ljava/lang/String;

.field protected mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

.field protected mElapsedTime:Landroid/widget/TextView;

.field protected mEriInfoText:Landroid/widget/TextView;

.field protected mInCallMenu:Lcom/android/incallui/InCallMenu;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field protected mIsSwapProcessing:Z

.field protected mNumberLabel:Landroid/widget/TextView;

.field protected mOnScreenMenuBtn:Landroid/widget/Button;

.field protected mPhoneNumber:Landroid/widget/TextView;

.field protected mPhoto:Landroid/widget/ImageView;

.field protected mPhotoContainer:Landroid/view/View;

.field protected mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mPrimaryCallInfo:Landroid/view/ViewGroup;

.field protected mPrimaryContainer:Landroid/view/View;

.field protected mPrimaryName:Landroid/widget/TextView;

.field protected mPrimaryPhotoText:Landroid/widget/TextView;

.field protected mSecondaryCallInfoContainer:Landroid/view/View;

.field protected mSecondaryCallName:Landroid/widget/TextView;

.field protected mSecondaryContainer:Landroid/view/View;

.field protected mSecondaryPanel:Landroid/view/View;

.field protected mSecondaryPhoto:Landroid/widget/ImageView;

.field protected mSecondaryPhotoContainer:Landroid/view/View;

.field protected mSecondaryPhotoText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateContainerLayout()V

    return-void
.end method

.method private arrangePrimaryLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getContainerHeight()I
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->density:F

    iget v9, v10, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a01eb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v5, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0349

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v0, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a03f0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a047f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0512

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v11, v5

    sub-int/2addr v11, v7

    int-to-double v12, v11

    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v12, v14

    int-to-double v14, v0

    sub-double/2addr v12, v14

    double-to-int v8, v12

    :goto_0
    const/4 v4, 0x0

    if-ge v8, v6, :cond_3

    div-int/lit8 v4, v6, 0x2

    :goto_1
    return v4

    :cond_0
    cmpl-float v11, v2, v9

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v11, v1

    int-to-double v12, v11

    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v12, v14

    int-to-double v14, v0

    sub-double/2addr v12, v14

    double-to-int v8, v12

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    int-to-double v12, v11

    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v12, v14

    int-to-double v14, v0

    sub-double/2addr v12, v14

    double-to-int v8, v12

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v11

    int-to-double v12, v11

    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v12, v14

    int-to-double v14, v0

    sub-double/2addr v12, v14

    double-to-int v8, v12

    goto :goto_0

    :cond_3
    div-int/lit8 v4, v8, 0x2

    goto :goto_1
.end method

.method private getPhotoMargin(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    sub-int v2, p1, v0

    div-int/lit8 v1, v2, 0x2

    return v1
.end method

.method private getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
    .locals 1

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    return-object v0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "view is null"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 7

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getContainerHeight()I

    move-result v0

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getPhotoMargin(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMenuBtn(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePhotoContainer(ZZ)V
    .locals 6

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "update UI Fail: call is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update UI from call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateMenuBtn(I)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->initCallStateSubInfo()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->arrangePrimaryLayout()V

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateTextColor(I)V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateContainerLayout()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getRemotePresenter()Lcom/android/incallui/remotecall/RemoteCallPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initCallStateSubInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f090560

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

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

    const-string v2, ").."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "onClick add call menu"

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->launchDialer()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100417
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v1, "onConfigurationChanged"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy.."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "Set isActivated as false"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "Set isActivated as true"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateIndicatorArea(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "onResume.."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const-string v0, "onStop.."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1002e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    const v0, 0x7f100198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f1001da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1001db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const v0, 0x7f100197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f100199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f1002e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    const v0, 0x7f1002e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v0, 0x7f1002ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v0, 0x7f1002df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const v0, 0x7f1002e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1002e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v0, 0x7f10028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f1002da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getContainerHeight()I

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "setPrimary: current state is not multi-party"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p6}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPrimaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_5

    :goto_4
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public declared-synchronized setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set primary image : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0550

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_1
    const-string v3, "primary image is null"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "set primaryImage as Default image"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0550

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Setting secondary call"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p8}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    invoke-virtual {p8}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {p0, p8}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    return-void

    :cond_1
    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecondaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_5

    :goto_4
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public declared-synchronized setSecondaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0550

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "secondary caller exists in contact"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "set secondaryImage as Default image"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0550

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setSecondaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryName(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "setVisible - - getView() == null"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public updateEriInfoText()V
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIndicatorArea(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTextColor(I)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_b

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_0
    if-ne p1, v9, :cond_11

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_11
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_13
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_14
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "update UI Fail: not isActivated or not isAdded"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateEriInfoText()V

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0
.end method
