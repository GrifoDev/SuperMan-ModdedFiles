.class public Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationInBoxTemplateViewWrapper.java"


# instance fields
.field private inboxText0:Landroid/widget/TextView;

.field private inboxText1:Landroid/widget/TextView;

.field private inboxText2:Landroid/widget/TextView;

.field private inboxText3:Landroid/widget/TextView;

.field private inboxText4:Landroid/widget/TextView;

.field private inboxText5:Landroid/widget/TextView;

.field private inboxText6:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private resolveViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText4:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText5:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020317

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText6:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->resolveViews(Landroid/service/notification/StatusBarNotification;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public updateContentColor(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateContentColor(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTextColor(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText0:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText1:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText2:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText3:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText4:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText4:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText5:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText5:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText6:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInBoxTemplateViewWrapper;->inboxText6:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void
.end method
