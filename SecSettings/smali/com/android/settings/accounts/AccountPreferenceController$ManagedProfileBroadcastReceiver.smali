.class Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private mListeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AccountPrefController"

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

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountPreferenceController;->-wrap1(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountPreferenceController;->-wrap2(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountPreferenceController;->-wrap0(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void

    :cond_1
    const-string/jumbo v1, "AccountPrefController"

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

    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method
