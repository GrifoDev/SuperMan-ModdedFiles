.class public Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationBigTextTemplateViewWrapper.java"


# instance fields
.field private mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

.field private mIsUpdateNotification:Z

.field private mOriginalText:Ljava/lang/CharSequence;

.field private mRevertText:Landroid/text/SpannableString;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mIsUpdateNotification:Z

    return-void
.end method

.method private resolveViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ImageFloatingTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mIsUpdateNotification:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mIsUpdateNotification:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->flattenTextColor()V

    :cond_0
    return-void
.end method


# virtual methods
.method public flattenTextColor()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->flattenTextColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mOriginalText:Ljava/lang/CharSequence;

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->resolveViews(Landroid/service/notification/StatusBarNotification;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public updateContentColor(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateContentColor(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTextColor(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mRevertText:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mOriginalText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigtext:Lcom/android/internal/widget/ImageFloatingTextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
