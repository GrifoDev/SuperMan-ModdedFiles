.class Landroid/accounts/AccountManager$15;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;I)V
    .locals 0

    iput-object p2, p0, Landroid/accounts/AccountManager$15;->this$0:Landroid/accounts/AccountManager;

    iput-object p6, p0, Landroid/accounts/AccountManager$15;->val$account:Landroid/accounts/Account;

    iput-object p7, p0, Landroid/accounts/AccountManager$15;->val$options:Landroid/os/Bundle;

    iput-object p8, p0, Landroid/accounts/AccountManager$15;->val$activity:Landroid/app/Activity;

    iput p9, p0, Landroid/accounts/AccountManager$15;->val$userId:I

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AccountManager$15;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-get3(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$15;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/AccountManager$15;->val$options:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/accounts/AccountManager$15;->val$activity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Landroid/accounts/AccountManager$15;->val$userId:I

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountManager;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
