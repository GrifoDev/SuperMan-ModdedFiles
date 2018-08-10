.class Lcom/android/settings/notification/AppNotificationSettings$4;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$channel:Landroid/app/NotificationChannel;

.field final synthetic val$channelPref:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channel:Landroid/app/NotificationChannel;

    iput-object p3, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channelPref:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channel:Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channelPref:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channel:Landroid/app/NotificationChannel;

    invoke-static {v3, v4}, Lcom/android/settings/notification/AppNotificationSettings;->-wrap0(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v2, v2, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v4, v4, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
