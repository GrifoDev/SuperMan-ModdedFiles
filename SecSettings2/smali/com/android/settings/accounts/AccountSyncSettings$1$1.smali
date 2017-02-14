.class Lcom/android/settings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string/jumbo v6, "booleanResult"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->-get0(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v6, v6, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v6}, Lcom/android/settings/accounts/AccountSyncSettings;->-get0(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v6

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v4, v7, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_3
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    :goto_1
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v5, v5, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v6, 0x65

    invoke-static {v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->-wrap0(Lcom/android/settings/accounts/AccountSyncSettings;I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
