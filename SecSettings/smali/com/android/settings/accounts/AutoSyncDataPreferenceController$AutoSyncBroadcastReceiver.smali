.class Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoSyncDataPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AutoSyncDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSyncBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AutoSyncDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.settings.AUTO_SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    iget-object v1, v1, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->-get0(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->-get0(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AutoSyncDataPreferenceController;

    iget-object v2, v2, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "AutoSyncDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot handle received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.settings.AUTO_SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
