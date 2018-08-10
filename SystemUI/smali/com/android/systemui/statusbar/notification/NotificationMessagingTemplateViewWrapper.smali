.class public Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMessagingTemplateViewWrapper.java"


# instance fields
.field private mContractedMessage:Landroid/view/View;

.field private mHistoricMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdateNotification:Z

.field private mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mOriginalMessagingText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mRevertMessagingText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mOriginalMessagingText:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRevertMessagingText:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mIsUpdateNotification:Z

    return-void
.end method

.method private resetMessagingText()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mOriginalMessagingText:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mOriginalMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRevertMessagingText:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRevertMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private resolveViews()V
    .locals 6

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mView:Landroid/view/View;

    const v5, 0x10203c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getContractedChildId()I

    move-result v5

    if-ne v4, v5, :cond_2

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mIsUpdateNotification:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mIsUpdateNotification:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->flattenTextColor()V

    :cond_4
    return-void
.end method


# virtual methods
.method public flattenTextColor()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->flattenTextColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->resetMessagingText()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mOriginalMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060133

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRevertMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->resolveViews()V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateContentColor(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateContentColor(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRevertMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mRevertMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mOriginalMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mOriginalMessagingText:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
