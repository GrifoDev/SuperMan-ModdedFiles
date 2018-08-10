.class public Lcom/android/systemui/statusbar/NotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "NotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCollapsedHeight:I

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDivider:Landroid/view/View;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSelectedOptionText:Landroid/widget/TextView;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z

.field private mUndoButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private animateSnoozeOptions(Z)V
    .locals 11

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v7, v8

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    aput v2, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    if-eqz p1, :cond_2

    :goto_1
    aput v3, v6, v9

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 9

    const/16 v5, 0x3c

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-ge p2, v5, :cond_0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, p1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    const v5, 0x7f120a8c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2, v0, v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;-><init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v5

    :cond_0
    if-ne p2, v5, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-array v5, v7, [Ljava/lang/Object;

    div-int/lit8 v6, p2, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, p1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private createOptionViews()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0d0107

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    const v2, 0x7f120a81

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xf

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1e

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120a82

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120a80

    const/16 v2, 0x78

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private hideSelectedOption()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-ne v3, v4, :cond_0

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->confirmation:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->hideSelectedOption()V

    return-void
.end method

.method private showSnoozeOptions(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const v0, 0x10803bc

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationSnooze;->animateSnoozeOptions(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x10803f5

    goto :goto_0
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mCollapsedHeight:I

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return v1
.end method

.method public isLeavebehind()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :goto_0
    return-void

    :cond_1
    const v8, 0x7f0a03ac

    if-ne v2, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    goto :goto_0

    :cond_2
    iput-object v9, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    new-array v3, v12, [I

    new-array v5, v12, [I

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v0, v8, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    aget v8, v5, v10

    aget v9, v3, v10

    sub-int/2addr v8, v9

    add-int v6, v8, v0

    aget v8, v5, v11

    aget v9, v3, v11

    sub-int/2addr v8, v9

    add-int v7, v8, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v6, v7, v10, v10}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070668

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mCollapsedHeight:I

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    const v0, 0x7f0a055b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f0a04ea

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOptionViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozing:Z

    return v0
.end method
