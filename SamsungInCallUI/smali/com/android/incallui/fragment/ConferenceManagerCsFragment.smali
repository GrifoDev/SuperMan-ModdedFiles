.class public Lcom/android/incallui/fragment/ConferenceManagerCsFragment;
.super Lcom/android/incallui/fragment/ConferenceManagerFragment;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# instance fields
.field private conferenceRowCallStateLabel:Landroid/widget/TextView;

.field private mAnimationBlink:Landroid/view/animation/AlphaAnimation;

.field private mAnimationBlinkTextListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

.field private mAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mConferencePanel:Landroid/widget/FrameLayout;

.field private mEndcallRowId:I

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPhotoViewForAnim:Landroid/widget/ImageView;

.field private mSelectedRowId:I

.field private mSplitAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mEndcallRowId:I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlink:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$10;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlinkTextListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$11;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->updateConferenceCallTime(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSelectedRowId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSelectedRowId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForSplit(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mEndcallRowId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private animateForManager()V
    .locals 13

    const/4 v12, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    const-string v0, "animateForManager..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getManagerTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    aput v2, v4, v12

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$6;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    new-array v3, v2, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0062

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, v0

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v12, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v0

    aget-object v5, v3, v0

    int-to-long v6, v4

    int-to-long v8, v4

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/b/a/f;

    invoke-direct {v2}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v12}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v12, v1}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_2
    return-void
.end method

.method private animateForSplit(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-string v0, "animateForSplit..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v2, 0x7f1000db

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->getPrimaryPhotoView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02045b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a030d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v3

    invoke-static {v0}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v0

    int-to-float v4, v0

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v0

    int-to-float v5, v0

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    sub-float/2addr v2, v4

    aput v2, v7, v1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    int-to-float v3, v3

    sub-float v3, v5, v3

    aput v3, v6, v1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v1

    aput v1, v2, v8

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    new-array v3, v2, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0063

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, v0

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    aput v9, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v0

    aget-object v5, v3, v0

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/b/a/f;

    invoke-direct {v3}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private cancelConferenceCallTimers()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateConferenceCallTime(I)V
    .locals 8

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1002ac

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->getCreateTimeForIMSConference(I)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->getStartDurationForIMSConference(I)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v2, v4

    sub-long v2, v6, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateConferencePanel()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getManagerTopMargin()I

    move-result v2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "animateForHide...isRunning"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "animateForHide...already hide"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto :goto_0

    :cond_3
    const-string v0, "animateForHide..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v1

    aput v1, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$4;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    new-array v3, v2, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0063

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, v0

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v0

    aget-object v5, v3, v0

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/b/a/f;

    invoke-direct {v2}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    goto/16 :goto_0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 10

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f1000db

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v3, 0x7f1002a6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f1000dc

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f1000dd

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f1000de

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const v7, 0x7f1002a7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OpenTheme: Call SecOpenThemeUtils.setPhotoViewBackground("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v1, p1, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPhotoIDShape(Landroid/content/Context;Landroid/view/View;IZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a030d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v8, v7

    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-static {v7, v0, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v6, :cond_1

    if-eqz p9, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v7, 0x0

    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz p3, :cond_4

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f02045d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZI)V
    .locals 13

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v3, 0x7f1000db

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000dc

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000dd

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000de

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1002a7

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1002ac

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a030d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-eqz p7, :cond_6

    if-eqz p8, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-static {v4, v0, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz v11, :cond_2

    if-eqz p9, :cond_a

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v12, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x5

    move/from16 v0, p10

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    move/from16 v0, p10

    if-ne v0, v2, :cond_b

    :cond_3
    const v2, 0x7f09001c

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->resetConferenceListAlpha()V

    :cond_4
    :goto_3
    const/4 v2, 0x7

    move/from16 v0, p10

    if-ne v0, v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/incallui/CallTimer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v2, v2, p1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/CallTimer;->start(J)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->resetConferenceListAlpha()V

    :goto_4
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallState:[I

    aput p10, v2, p1

    return-void

    :cond_6
    if-eqz p6, :cond_7

    new-instance v7, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-direct {v7, p2, v0, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02045d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x8

    move/from16 v0, p10

    if-ne v0, v2, :cond_c

    const v2, 0x7f090021

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->setConferenceListAlpha(IF)V

    goto/16 :goto_3

    :cond_c
    const/16 v2, 0x9

    move/from16 v0, p10

    if-ne v0, v2, :cond_d

    const v2, 0x7f090018

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_4

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->setConferenceListAlpha(IF)V

    goto/16 :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/incallui/CallTimer;->cancel()V

    goto/16 :goto_4
.end method

.method public displayConferenceDisconnectingAnimation(I)V
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayConferenceDisconnectingAnimation endcallRowId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mEndcallRowId:I

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlink:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlinkTextListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1002a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlink:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1000e0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f1002a9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

    return-void
.end method

.method public isFragmentVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "onConfigurationChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onConfigurationChanged() Hide ManageConferencePanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForHide()V

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 2

    const-string v0, "onCoverStateChanged() Hide ManageConferencePanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForHide()V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0400f2

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const v0, 0x7f1000ef

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    const v0, 0x7f1000f7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    new-array v0, v0, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v0, 0x5

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    new-array v0, v0, [Lcom/android/incallui/CallTimer;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mBlinkAnimation:[Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallState:[I

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v0, v3, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    new-instance v4, Lcom/android/incallui/CallTimer;

    new-instance v5, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V

    invoke-direct {v4, v5}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    aput-object v4, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const v0, 0x7f0400ca

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mActionBarElevation:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_3
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x7f1000f2
        0x7f1000f3
        0x7f1000f4
        0x7f1000f5
        0x7f1000f6
    .end array-data
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->stopCallTimer()V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_0
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->cancelConferenceCallTimers()V

    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onMobileKeyboardChanged() Hide ManageConferencePanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForHide()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->updateConferencePanel()V

    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    const-string v0, "onOnehandModeChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public resetConferenceListAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, v1

    const v2, 0x7f1002a4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConferenceListAlpha(IF)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1002a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1002a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getView is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->updateConferencePanel()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForManager()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->cancelConferenceCallTimers()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForHide()V

    goto :goto_1
.end method

.method public final setupEndButtonForRow(IZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1000e0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020450

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0416

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v0, v0, v2, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$2;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupSeparateButtonForRow(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f1000df

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f1002a9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0416

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v0, v2, v3, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    if-eqz p2, :cond_0

    new-instance v2, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
