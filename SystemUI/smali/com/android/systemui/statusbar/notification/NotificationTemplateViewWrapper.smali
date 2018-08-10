.class public Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private mContentHeight:I

.field private mIsUpdateNotification:Z

.field private mMinHeightHint:I

.field private mOriginalText:Ljava/lang/CharSequence;

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRevertText:Landroid/text/SpannableString;

.field private mText:Landroid/widget/TextView;

.field private mTextLine1:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mIsUpdateNotification:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    return-void
.end method

.method private fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$R3NEfaGhS-RBqZKozP-Fc-aGb00;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$R3NEfaGhS-RBqZKozP-Fc-aGb00;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static interpolateColor(IIF)I
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102043e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f0a0227

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020504

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102051f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mIsUpdateNotification:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mIsUpdateNotification:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->flattenTextColor()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10201c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    return-void

    :cond_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private setPictureDark(ZZJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    :cond_0
    return-void
.end method

.method private setProgressBarDark(ZZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;Z)V

    goto :goto_0
.end method

.method private updateActionOffset()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;F)V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mColor:I

    const/4 v2, -0x1

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public flattenTextColor()V
    .locals 6

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->flattenTextColor()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mOriginalText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationTemplateViewWrapper_8987(Landroid/widget/ProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public setContentHeight(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setContentHeight(II)V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateActionOffset()V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setDark(ZZJ)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setPictureDark(ZZJ)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setProgressBarDark(ZZJ)V

    return-void
.end method

.method public updateContentColor(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateContentColor(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTitleColor(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTextColor(Z)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppPrimaryColor(Z)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mOriginalText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected updateInvertHelper()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_3
    return-void
.end method
