.class public Lcom/android/settings/users/ProfileUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static copyProfileName(Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v5, "profile"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v5, "name_copied_once"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-static {p0, v6, v3}, Lcom/android/settings/Utils;->getMeProfileName(Landroid/content/Context;ZLandroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "name_copied_once"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/android/settings/users/ProfileUpdateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/ProfileUpdateReceiver$1;-><init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/users/ProfileUpdateReceiver$1;->start()V

    return-void
.end method
