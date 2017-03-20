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

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateContainerLayout()V

    return-void
.end method

.method private arrangePrimaryLayout()V
    .locals 2

    .prologue
    .line 199
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

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 514
    if-nez p2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 516
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 517
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 519
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 520
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getContainerHeight()I
    .locals 16

    .prologue
    .line 642
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

    .line 643
    .local v3, "display":Landroid/view/Display;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 644
    .local v10, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->density:F

    .line 647
    .local v2, "density":F
    iget v9, v10, Landroid/util/DisplayMetrics;->density:F

    .line 649
    .local v9, "realDensity":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a01e8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v5, v11

    .line 650
    .local v5, "indicatorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0345

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v0, v11

    .line 651
    .local v0, "callStateHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a03eb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    .line 652
    .local v1, "captionHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0480

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 653
    .local v7, "navigatorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0514

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 655
    .local v6, "minimumContainerHeight":I
    const/4 v8, 0x0

    .line 656
    .local v8, "realContainerHeight":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-nez v11, :cond_0

    .line 657
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

    .line 666
    :goto_0
    const/4 v4, 0x0

    .line 667
    .local v4, "height":I
    if-ge v8, v6, :cond_3

    .line 668
    div-int/lit8 v4, v6, 0x2

    .line 672
    :goto_1
    return v4

    .line 658
    .end local v4    # "height":I
    :cond_0
    cmpl-float v11, v2, v9

    if-eqz v11, :cond_1

    .line 659
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

    .line 660
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 661
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

    .line 663
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

    .line 670
    .restart local v4    # "height":I
    :cond_3
    div-int/lit8 v4, v8, 0x2

    goto :goto_1
.end method

.method private getPhotoMargin(I)I
    .locals 4
    .param p1, "containerHeight"    # I

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 677
    .local v0, "photoSize":I
    sub-int v2, p1, v0

    div-int/lit8 v1, v2, 0x2

    .line 678
    .local v1, "topMargin":I
    return v1
.end method

.method private getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    return-object v0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    const-string v0, "view is null"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 7

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getContainerHeight()I

    move-result v0

    .line 684
    .local v0, "containerHeight":I
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 685
    .local v2, "primaryLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 686
    .local v4, "secondaryLp":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 687
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 689
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getPhotoMargin(I)I

    move-result v1

    .line 693
    .local v1, "photoTopMargin":I
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 694
    .local v3, "primaryPhotoLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 695
    .local v5, "secondaryPhotoLp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 696
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 697
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    return-void
.end method

.method private updateMenuBtn(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 211
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePhotoContainer(ZZ)V
    .locals 6
    .param p1, "isConference"    # Z
    .param p2, "canManageConference"    # Z

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 499
    :goto_0
    return-void

    .line 494
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

    .line 495
    .local v0, "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 496
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 497
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 184
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v0, :cond_0

    .line 185
    const-string v2, "update UI Fail: call is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 188
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

    .line 189
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    .line 191
    .local v1, "state":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateMenuBtn(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->initCallStateSubInfo()V

    .line 193
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->arrangePrimaryLayout()V

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateTextColor(I)V

    .line 195
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateContainerLayout()V

    goto :goto_0

    .line 189
    .end local v1    # "state":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    .line 502
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 510
    :goto_0
    return v2

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getRemotePresenter()Lcom/android/incallui/remotecall/RemoteCallPresenter;
    .locals 1

    .prologue
    .line 739
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initCallStateSubInfo()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f090560

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 566
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

    const-string v2, ").."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    return-void

    .line 570
    :pswitch_0
    const-string v1, "onClick add call menu"

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->launchDialer()V

    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x7f100419
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    const-string v1, "onConfigurationChanged"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 170
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 120
    const v0, 0x7f040104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 551
    const-string v0, "onDestroy.."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 553
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 554
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 558
    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 561
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 538
    const-string v0, "Set isActivated as false"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    .line 540
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 541
    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 0
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 732
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 526
    const-string v0, "Set isActivated as true"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    .line 528
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateIndicatorArea(Z)V

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    .line 532
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 533
    const-string v0, "onResume.."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 545
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 546
    const-string v0, "onStop.."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    const v0, 0x7f1002e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    .line 128
    const v0, 0x7f100198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f1001da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    .line 132
    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f1001db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f100197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 135
    const v0, 0x7f100199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 138
    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f1002e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    .line 141
    const v0, 0x7f1002e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    .line 142
    const v0, 0x7f1002ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f1002df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    .line 144
    const v0, 0x7f1002e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f1002e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 148
    const v0, 0x7f10028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    .line 149
    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 151
    const v0, 0x7f1002da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    .line 152
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 154
    const v0, 0x7f100419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    .line 160
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getContainerHeight()I

    .line 161
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getRemoteCallList()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    .line 162
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v4, 0x0

    .line 393
    iput-boolean v4, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 395
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    const-string v3, "setPrimary: current state is not multi-party"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v1, 0x0

    .line 401
    .local v1, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 402
    .local v2, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 404
    .local v0, "isPersonalPhotoAvailable":Z
    if-eqz p6, :cond_1

    .line 405
    invoke-virtual {p6}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {p6}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 407
    const/4 v0, 0x1

    .line 411
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 412
    iput-object p2, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 414
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p6}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 423
    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 427
    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPrimaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 586
    if-nez p1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    .line 591
    .local v0, "contactExist":Z
    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 593
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 602
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 592
    goto :goto_1

    .line 596
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 597
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

    .line 599
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
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 284
    monitor-enter p0

    if-nez p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 288
    .local v2, "image":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    if-eqz v2, :cond_2

    .line 291
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

    .line 292
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0552

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 293
    .local v0, "diameter":I
    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 284
    .end local v0    # "diameter":I
    .end local v2    # "image":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 296
    .restart local v2    # "image":Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_1
    const-string v3, "primary image is null"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 299
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

    .line 300
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 308
    :cond_4
    const-string v3, "set primaryImage as Default image"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020399

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 310
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0552

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 311
    .restart local v0    # "diameter":I
    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 277
    const/4 v0, 0x3

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 488
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "providerLabel"    # Ljava/lang/String;
    .param p5, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "canManageConference"    # Z
    .param p8, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v1, 0x0

    .line 433
    const-string v0, "Setting secondary call"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    if-eqz p8, :cond_0

    .line 436
    invoke-virtual {p8}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p8}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 438
    invoke-virtual {p8}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 445
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 446
    iput-object p2, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 448
    invoke-virtual {p0, p8}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 449
    return-void

    .line 440
    :cond_1
    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 441
    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecondaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 607
    if-nez p1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    .line 612
    .local v0, "contactExist":Z
    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 622
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 613
    goto :goto_1

    .line 615
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 616
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

    .line 618
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
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 318
    monitor-enter p0

    if-nez p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 322
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 325
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 326
    .local v2, "image":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    if-eqz v2, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0552

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 330
    .local v0, "diameter":I
    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    .end local v0    # "diameter":I
    .end local v2    # "image":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 333
    .restart local v2    # "image":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    .line 334
    .local v1, "displayName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 335
    const-string v3, "secondary caller exists in contact"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
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

    .line 337
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 345
    :cond_5
    const-string v3, "set secondaryImage as Default image"

    invoke-static {p0, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020399

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 347
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0552

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 348
    .restart local v0    # "diameter":I
    invoke-static {v2, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setSecondaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 460
    const/4 v0, 0x3

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "setVisible - - getView() == null"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 468
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 468
    goto :goto_0

    :cond_4
    move v0, v2

    .line 471
    goto :goto_1

    :cond_5
    move v1, v2

    .line 474
    goto :goto_2
.end method

.method public updateEriInfoText()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 702
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 705
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 707
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 708
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 711
    .local v3, "mMinHeightForEri":I
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v3, :cond_2

    const/4 v2, 0x1

    .line 712
    .local v2, "isMultiWindow":Z
    :goto_1
    if-nez v2, :cond_3

    .line 713
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "isMultiWindow":Z
    :cond_2
    move v2, v5

    .line 711
    goto :goto_1

    .line 715
    .restart local v2    # "isMultiWindow":Z
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIndicatorArea(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 721
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTextColor(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 220
    .local v3, "bannerTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 222
    .local v2, "bannerSubTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 223
    .local v4, "endCallLabelColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 224
    .local v1, "bannerDefaultTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 226
    .local v0, "bannerDefaultSubTextColor":I
    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_b

    .line 227
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    :cond_6
    :goto_0
    if-ne p1, v9, :cond_11

    .line 243
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 244
    :cond_7
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 245
    :cond_8
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 246
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 253
    :cond_a
    :goto_1
    return-void

    .line 234
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    :cond_d
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    :cond_e
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    :cond_f
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    :cond_10
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 248
    :cond_11
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    :cond_12
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 250
    :cond_13
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    :cond_14
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 3
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 627
    iget-boolean v2, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isActivated:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    :cond_0
    const-string v2, "update UI Fail: not isActivated or not isAdded"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 633
    .local v0, "primaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    .line 635
    .local v1, "secondaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateEriInfoText()V

    .line 637
    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setPrimaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 638
    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->setSecondaryCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0
.end method
