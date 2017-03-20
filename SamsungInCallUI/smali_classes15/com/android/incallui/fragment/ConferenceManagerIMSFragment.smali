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

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    return-object v0
.end method

.method private animateForManager()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 219
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 222
    :cond_0
    const-string v3, "animateForManager..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 240
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 241
    .local v1, "animatorList":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAlpha(F)V

    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 244
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 248
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$2;-><init>(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->updateConferencePanel()V

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 259
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 261
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    .line 262
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v8, v7}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    .line 267
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    return-void
.end method

.method private getConfenrenceCallManagerHeight()I
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "height":I
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 276
    :goto_0
    return v0

    .line 274
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

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 135
    const-string v3, "updateConferencePanel"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getConfenrenceCallManagerHeight()I

    move-result v0

    .line 138
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getManagerTopMargin()I

    move-result v2

    .line 139
    .local v2, "topMargin":I
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    .local v1, "panelLp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 141
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 142
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v0    # "height":I
    .end local v1    # "panelLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "topMargin":I
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAlpha(F)V

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 150
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    const-string v5, "animateForHide...isRunning"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getConfenrenceCallManagerHeight()I

    move-result v3

    .line 155
    .local v3, "height":I
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 156
    .local v4, "panelLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v5, v3, :cond_3

    .line 157
    const-string v5, "animateForHide...already hide"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 163
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto :goto_0

    .line 168
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_3
    const-string v5, "animateForHide..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 186
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 187
    .local v1, "animatorList":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAlpha(F)V

    .line 188
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 189
    .local v2, "duration":I
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 193
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;-><init>(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 205
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 207
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0, v9}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    .line 208
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    .line 211
    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v5

    invoke-interface {v5, v9, v9}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    goto/16 :goto_0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 2
    .param p1, "isClosed"    # Z

    .prologue
    .line 340
    const-string v0, "onCoverStateChanged() Hide ManageConferencePanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V

    .line 342
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v1, "onCreateView"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const v1, 0x7f0400b6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    .line 83
    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    .line 87
    :cond_0
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    .line 90
    :cond_1
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 93
    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 94
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->stopCallTimer()V

    .line 102
    :cond_0
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    .line 105
    :cond_1
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 108
    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 109
    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onDestroyView()V

    .line 110
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 354
    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    .line 332
    .local v0, "isShowConferencePanel":Z
    if-eqz v0, :cond_0

    .line 333
    const-string v1, "onMobileKeyboardChanged() Hide ManageConferencePanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V

    .line 336
    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    .prologue
    .line 324
    const-string v0, "onOnehandModeChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->setVisible(Z)V

    .line 326
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 350
    return-void
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshCall(Lcom/android/incallui/Call;)V

    .line 320
    return-void
.end method

.method public setVisible(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 283
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 284
    const-string v3, "getView is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 287
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

    .line 288
    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 290
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->updateConferencePanel()V

    .line 291
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForManager()V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 299
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 300
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 304
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0, v5}, Lcom/android/incallui/InCallActivity;->expandBackgroundForConference(Z)V

    .line 305
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v5, v5}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    goto :goto_0

    .line 311
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V

    goto/16 :goto_0
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "parentCanSeparate"    # Z
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

    .prologue
    .line 114
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/incallui/ConferenceParticipantListAdapter;-><init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 118
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->startCallTimer()V

    .line 121
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

    .line 122
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipants(Ljava/util/List;Z)V

    .line 123
    return-void
.end method
