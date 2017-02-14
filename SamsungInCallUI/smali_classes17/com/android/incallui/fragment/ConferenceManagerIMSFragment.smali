.class public Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;
.super Lcom/android/incallui/fragment/ConferenceManagerFragment;
.source "ConferenceManagerIMSFragment.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# instance fields
.field private mConferencePanel:Landroid/widget/FrameLayout;

.field private mConferenceParticipantList:Landroid/widget/ListView;

.field private mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mManagerAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    return-object v0
.end method

.method private animateForManager()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    const-string v3, "animateForManager..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;-><init>(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->updateConferencePanel()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v8, v7}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_1
    return-void
.end method

.method private getConfenrenceCallManagerHeight()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private updateConferencePanel()V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    const-string v3, "updateConferencePanel"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getConfenrenceCallManagerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getManagerTopMargin()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "animateForHide...isRunning"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getConfenrenceCallManagerHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v5, v3, :cond_3

    const-string v5, "animateForHide...already hide"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto :goto_0

    :cond_3
    const-string v5, "animateForHide..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;-><init>(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v9}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v5

    invoke-interface {v5, v9, v9}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    goto/16 :goto_0
.end method

.method public isFragmentVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 2

    const-string v0, "onCoverStateChanged() Hide ManageConferencePanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0400b6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    :cond_0
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_1
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->stopCallTimer()V

    :cond_0
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_1
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onDestroyView()V

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V

    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    const-string v0, "onOnehandModeChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "getView is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->updateConferencePanel()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForManager()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v5}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v5, v5}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V

    goto/16 :goto_0
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/incallui/ConferenceParticipantListAdapter;-><init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->startCallTimer()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipants(Ljava/util/List;Z)V

    return-void
.end method
