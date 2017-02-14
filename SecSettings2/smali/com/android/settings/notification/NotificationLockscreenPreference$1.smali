.class Lcom/android/settings/notification/NotificationLockscreenPreference$1;
.super Ljava/lang/Object;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationLockscreenPreference;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationLockscreenPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p3, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v1, p3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-wrap2(Lcom/android/settings/notification/NotificationLockscreenPreference;I)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-wrap0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-get1(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-get1(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-get0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z

    move-result v3

    invoke-static {v2, p3, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->-wrap1(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method
