.class Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->refreshDisplayedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

.field final synthetic val$row:Lcom/android/settings/notification/NotificationBackend$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->val$row:Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    check-cast p1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iget-object v2, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannel:Landroid/app/NotificationChannel;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;ZLandroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get5(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->val$row:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->val$row:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iget-object v4, v4, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/4 v1, 0x1

    return v1
.end method
