.class Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManagedProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManagedProfileSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/ManagedProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/ManagedProfileSettings;Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, -0x2710

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ManagedProfileSettings"

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

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/ManagedProfileSettings;->-get0(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/ManagedProfileSettings;->-get0(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/ManagedProfileSettings;->-get2(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/ManagedProfileSettings;->-get1(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-static {v3}, Lcom/android/settings/accounts/ManagedProfileSettings;->-get0(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "ManagedProfileSettings"

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

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
