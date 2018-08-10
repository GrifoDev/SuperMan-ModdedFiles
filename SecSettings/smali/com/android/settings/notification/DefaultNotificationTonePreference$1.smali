.class Lcom/android/settings/notification/DefaultNotificationTonePreference$1;
.super Landroid/os/AsyncTask;
.source "DefaultNotificationTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/DefaultNotificationTonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/DefaultNotificationTonePreference;

.field final synthetic val$uri:Landroid/net/Uri;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;->this$0:Lcom/android/settings/notification/DefaultNotificationTonePreference;

    invoke-static {v0}, Lcom/android/settings/notification/DefaultNotificationTonePreference;->-get0(Lcom/android/settings/notification/DefaultNotificationTonePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;->this$0:Lcom/android/settings/notification/DefaultNotificationTonePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/DefaultNotificationTonePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/DefaultNotificationTonePreference$1;->onPostExecute(Ljava/lang/CharSequence;)V

    return-void
.end method
