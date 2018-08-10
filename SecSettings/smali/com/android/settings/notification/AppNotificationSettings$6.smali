.class Lcom/android/settings/notification/AppNotificationSettings$6;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->setupBlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-boolean v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    const/16 v0, -0x3e8

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v4, v1, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    const-string/jumbo v1, "AppNotificationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Legacy setNotifications enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v5, v5, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v6, v6, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget v5, v5, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v1, v4, v5, p2}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v1, v4}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings$6;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v4}, Lcom/android/settings/notification/AppNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0391

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-nez p2, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
