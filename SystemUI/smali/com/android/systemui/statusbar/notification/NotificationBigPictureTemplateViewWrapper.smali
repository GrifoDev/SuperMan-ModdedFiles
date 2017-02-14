.class public Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationBigPictureTemplateViewWrapper.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private updateImageTag(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.largeIcon.big"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const v3, 0x7f130047

    invoke-virtual {v2, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->updateImageTag(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
