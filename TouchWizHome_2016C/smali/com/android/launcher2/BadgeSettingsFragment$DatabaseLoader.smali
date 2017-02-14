.class Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;
.super Landroid/os/AsyncTask;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BadgeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseLoader"
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
.field final synthetic this$0:Lcom/android/launcher2/BadgeSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/BadgeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/BadgeSettingsFragment;Lcom/android/launcher2/BadgeSettingsFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;-><init>(Lcom/android/launcher2/BadgeSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateDatabaseLoader doInBackground: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->updateAppBadgeIntoDatabase()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;
    invoke-static {v0, v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$1202(Lcom/android/launcher2/BadgeSettingsFragment;Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;)Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher2/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z
    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$1300(Lcom/android/launcher2/BadgeSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->updateList()V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher2/BadgeSettingsFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$900(Lcom/android/launcher2/BadgeSettingsFragment;)V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$1302(Lcom/android/launcher2/BadgeSettingsFragment;Z)Z

    :cond_0
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateDatabaseLoader onPostExecute: UpdateDatabase finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
