.class Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

.field final synthetic val$channel:Landroid/app/NotificationChannel;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;Landroid/app/NotificationChannel;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$channel:Landroid/app/NotificationChannel;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    check-cast p1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$channel:Landroid/app/NotificationChannel;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;ZLandroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get5(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$uid:I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/4 v1, 0x1

    return v1
.end method
