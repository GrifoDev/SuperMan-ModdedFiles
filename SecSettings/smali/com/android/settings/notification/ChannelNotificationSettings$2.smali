.class Lcom/android/settings/notification/ChannelNotificationSettings$2;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v2, v2, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget v3, v3, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings$2;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 v1, 0x1

    return v1
.end method
