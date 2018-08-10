.class Lcom/android/settings/notification/ChannelNotificationSettings$5;
.super Ljava/lang/Object;
.source "ChannelNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->setupRingtone()V
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

    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    check-cast p2, Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ChannelNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget v2, v2, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings$5;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 v0, 0x0

    return v0
.end method
