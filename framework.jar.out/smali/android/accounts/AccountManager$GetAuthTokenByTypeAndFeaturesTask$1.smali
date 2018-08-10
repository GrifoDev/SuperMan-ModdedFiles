.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->doWork()V
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
.field final synthetic this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .locals 0

    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    const-string/jumbo v1, "authAccount"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "accountType"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v2, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v5, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v6, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v8, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    :goto_0
    return-void

    :catch_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v11}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v14

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v14}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v12}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "authAccount"

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "accountType"

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "authtoken"

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "accountAccessId"

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v1, v15}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_3
    move-exception v13

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-set0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I

    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v5, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v6, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v8, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0
.end method
