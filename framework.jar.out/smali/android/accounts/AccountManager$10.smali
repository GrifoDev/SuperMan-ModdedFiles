.class Landroid/accounts/AccountManager$10;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Landroid/accounts/AccountManager$10;->this$0:Landroid/accounts/AccountManager;

    iput-object p6, p0, Landroid/accounts/AccountManager$10;->val$account:Landroid/accounts/Account;

    iput-object p7, p0, Landroid/accounts/AccountManager$10;->val$authTokenType:Ljava/lang/String;

    iput-object p8, p0, Landroid/accounts/AccountManager$10;->val$optionsIn:Landroid/os/Bundle;

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/AccountManager$10;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-get4(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$10;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$10;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Landroid/accounts/AccountManager$10;->val$authTokenType:Ljava/lang/String;

    iget-object v6, p0, Landroid/accounts/AccountManager$10;->val$optionsIn:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v6}, Landroid/accounts/IAccountManager;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-void
.end method
