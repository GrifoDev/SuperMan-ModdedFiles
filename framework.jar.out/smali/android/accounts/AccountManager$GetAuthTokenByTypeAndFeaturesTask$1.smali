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
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .locals 0
    .param p1, "this$1"    # Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    .prologue
    .line 2235
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2240
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    .local v9, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    array-length v2, v9

    invoke-static {v1, v2}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-set0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I

    .line 2254
    array-length v1, v9

    if-nez v1, :cond_1

    .line 2255
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v2, v2, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    .line 2259
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v5, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v6, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v8, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    .line 2258
    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    .line 2237
    :goto_0
    return-void

    .line 2247
    .end local v9    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v12

    .line 2248
    .local v12, "e":Landroid/accounts/AuthenticatorException;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v12}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2249
    return-void

    .line 2244
    .end local v12    # "e":Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v15

    .line 2245
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v15}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2246
    return-void

    .line 2241
    .end local v15    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 2242
    .local v13, "e":Landroid/accounts/OperationCanceledException;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v1, v13}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->-wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    .line 2243
    return-void

    .line 2262
    .end local v13    # "e":Landroid/accounts/OperationCanceledException;
    .restart local v9    # "accounts":[Landroid/accounts/Account;
    :cond_0
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2263
    .local v17, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "authAccount"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string/jumbo v1, "accountType"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string/jumbo v1, "authtoken"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 2268
    :catch_3
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2273
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_1
    array-length v1, v9

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2275
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 2276
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v4, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 2276
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v7, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 2279
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v4, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    .line 2281
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v5, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, v6, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v7, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    .line 2279
    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    iput-object v1, v8, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    .line 2284
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 2286
    new-instance v10, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;)V

    .line 2303
    .local v10, "chooseResponse":Landroid/accounts/IAccountManagerResponse;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2305
    .local v16, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2306
    const v2, 0x1040060

    .line 2305
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2304
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 2307
    .local v11, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2308
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2307
    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2309
    const-string/jumbo v1, "accounts"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2310
    const-string/jumbo v1, "accountManagerResponse"

    .line 2311
    new-instance v2, Landroid/accounts/AccountManagerResponse;

    invoke-direct {v2, v10}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    .line 2310
    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2312
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2316
    .end local v10    # "chooseResponse":Landroid/accounts/IAccountManagerResponse;
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2317
    .restart local v17    # "result":Landroid/os/Bundle;
    const-string/jumbo v1, "accounts"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 2320
    :catch_4
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
