.class Lcom/android/settings/notification/ChannelNotificationSettings$1;
.super Landroid/os/AsyncTask;
.source "ChannelNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ChannelNotificationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ChannelNotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ChannelNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v2, v2, Lcom/android/settings/notification/ChannelNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/ChannelNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget v4, v4, Lcom/android/settings/notification/ChannelNotificationSettings;->mUid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->getGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->-set0(Lcom/android/settings/notification/ChannelNotificationSettings;Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;

    :cond_0
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ChannelNotificationSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ChannelNotificationSettings;->-get0(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelNotificationSettings$1;->this$0:Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->-get0(Lcom/android/settings/notification/ChannelNotificationSettings;)Landroid/app/NotificationChannelGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/ChannelNotificationSettings;->-wrap1(Lcom/android/settings/notification/ChannelNotificationSettings;Ljava/lang/CharSequence;)V

    return-void
.end method
