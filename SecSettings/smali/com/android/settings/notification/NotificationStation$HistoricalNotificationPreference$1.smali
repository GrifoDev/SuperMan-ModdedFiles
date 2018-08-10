.class Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

.field final synthetic val$extra:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->this$1:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->this$1:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->-get0(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;)Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->-set0(J)J

    return-void
.end method
