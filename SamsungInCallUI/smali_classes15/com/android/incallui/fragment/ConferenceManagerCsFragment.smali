.class public Lcom/android/incallui/fragment/ConferenceManagerCsFragment;
.super Lcom/android/incallui/fragment/ConferenceManagerFragment;
.source "ConferenceManagerCsFragment.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
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
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    const-string v11, "animateForManager..."

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getManagerTopMargin()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v10, v11, v12

    const/4 v12, 0x1

    aput v5, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v11, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$6;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v12, v7

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v11}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v8

    new-array v3, v8, [Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v11, v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v11, v11, v6

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v3, v6

    aget-object v11, v3, v6

    int-to-long v12, v4

    int-to-long v14, v4

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    int-to-long v0, v6

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v12, v3, v6

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$7;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v12}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_2
    return-void
.end method

.method private animateForSplit(I)V
    .locals 29

    const-string v24, "animateForSplit..."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, p1

    const v25, 0x7f1000b7

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v6}, Lcom/android/incallui/CallCardUi;->getPrimaryPhotoView()Landroid/view/View;

    move-result-object v21

    new-instance v24, Landroid/animation/AnimatorSet;

    invoke-direct/range {v24 .. v24}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0203a1

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a035a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v14}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v18

    invoke-static {v14}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v0, v18

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget-object v25, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sub-float v28, v19, v17

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget-object v25, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v20, v28

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v16

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v16, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput v26, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v24, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$8;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v24

    check-cast v24, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v11

    new-array v5, v11, [Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d0040

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    sget-object v25, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    aput-object v24, v5, v9

    aget-object v24, v5, v9

    int-to-long v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    aget-object v25, v5, v9

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d003e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    new-instance v25, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    int-to-long v0, v7

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v24

    new-instance v25, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$9;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    if-eqz v24, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v24

    if-eqz v24, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    :cond_5
    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v24

    if-eqz v24, :cond_6

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private cancelConferenceCallTimers()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/incallui/CallTimer;->cancel()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConfenrenceCallManagerHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method private updateConferenceCallTime(I)V
    .locals 12

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v7

    if-lt p1, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v7, v7, p1

    const v8, 0x7f100222

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->getCreateTimeForIMSConference(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->getStartDurationForIMSConference(I)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v10, v0, v4

    sub-long v2, v8, v10

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateConferencePanel()V
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getManagerTopMargin()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 15

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "animateForHide...isRunning"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v3

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v10, v3, :cond_3

    const-string v10, "animateForHide...already hide"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto :goto_0

    :cond_3
    const-string v10, "animateForHide..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d003e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v9, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v10, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$4;

    invoke-direct {v10, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$4;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v10, v5

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v10}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v6

    new-array v1, v6, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0040

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_4

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v10, v10, v4

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v1, v4

    aget-object v10, v1, v4

    int-to-long v12, v2

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;

    invoke-direct {v11, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$5;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v11}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    goto/16 :goto_0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 11

    iget-object v9, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f1000b7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f10021c

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f1000b8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f1000b9

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f1000ba

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f10021d

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OpenTheme: Call SecOpenThemeUtils.setPhotoViewBackground("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v8, p1, v10}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPhotoIDShape(Landroid/content/Context;Landroid/view/View;IZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a035a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-static {v9, v0, v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v3, :cond_1

    if-eqz p9, :cond_5

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz p3, :cond_4

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0203a3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-static {v9, v0, v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/16 v9, 0x8

    goto :goto_1
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZI)V
    .locals 14

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000b7

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000b8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000b9

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f1000ba

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f10021d

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v4, 0x7f100222

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a035a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    if-eqz p7, :cond_6

    if-eqz p8, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-static {v2, v0, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-eqz v12, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz v9, :cond_2

    if-eqz p9, :cond_a

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v13, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x5

    move/from16 v0, p10

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    move/from16 v0, p10

    if-ne v0, v2, :cond_b

    :cond_3
    const v2, 0x7f09001c

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

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

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {v7, v0, v1, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0203a3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-static {v2, v0, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x8

    move/from16 v0, p10

    if-ne v0, v2, :cond_c

    const v2, 0x7f090021

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, v2}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->setConferenceListAlpha(IF)V

    goto/16 :goto_3

    :cond_c
    const/16 v2, 0x9

    move/from16 v0, p10

    if-ne v0, v2, :cond_d

    const v2, 0x7f090018

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

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
    .locals 7

    const/4 v6, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayConferenceDisconnectingAnimation endcallRowId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mEndcallRowId:I

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlink:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlinkTextListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v3, 0x7f10021e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationBlink:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOut:Landroid/view/animation/AlphaAnimation;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v3, 0x7f1000bc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v3, 0x7f10021f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

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
    .locals 2

    const-string v1, "onConfigurationChanged"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "onConfigurationChanged() Hide ManageConferencePanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0400d9

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const v4, 0x7f1000c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    const v4, 0x7f1000c8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    new-array v4, v4, [Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v4, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    new-array v4, v4, [Lcom/android/incallui/CallTimer;

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    new-array v4, v4, [Landroid/view/animation/Animation;

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mBlinkAnimation:[Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallState:[I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v5, v0

    move v1, v0

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mCallTimerList:[Lcom/android/incallui/CallTimer;

    new-instance v5, Lcom/android/incallui/CallTimer;

    new-instance v6, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V

    invoke-direct {v5, v6}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const v4, 0x7f0400b4

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mActionBarElevation:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_3
    const-string v4, "support_mobile_keyboard"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x7f1000c3
        0x7f1000c4
        0x7f1000c5
        0x7f1000c6
        0x7f1000c7
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
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "onMobileKeyboardChanged() Hide ManageConferencePanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    const v2, 0x7f10021a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

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

    const v1, 0x7f10021a

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

    const v1, 0x7f10021e

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
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "getView is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->updateConferencePanel()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForManager()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v5}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v5, v5}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->cancelConferenceCallTimers()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForHide()V

    goto :goto_1
.end method

.method public final setupEndButtonForRow(IZ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f1000bc

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020396

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a012b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a03f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v2, v2, v3, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    if-eqz p2, :cond_0

    new-instance v4, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$2;

    invoke-direct {v4, p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$2;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupSeparateButtonForRow(IZ)V
    .locals 7

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f1000bb

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f10021f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0124

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v3, v2, v1, v0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    if-eqz p2, :cond_0

    new-instance v5, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;-><init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
