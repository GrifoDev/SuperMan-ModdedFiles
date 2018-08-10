.class Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
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
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/accounts/AccountManager;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v0, "com.osp.app.signin"

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get16(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "KeyguardDirectionLock"

    const-string/jumbo v5, "AccountManagerFuture() run: "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "KeyguardDirectionLock"

    const-string/jumbo v5, "AuthenticatorException occurred"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "KeyguardDirectionLock"

    const-string/jumbo v5, "IOException occurred"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    const-string/jumbo v4, "KeyguardDirectionLock"

    const-string/jumbo v5, "OperationCanceledException occurred"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    goto :goto_0

    :catchall_0
    move-exception v4

    iget v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    throw v4
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    iput v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->mAccountIndex:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->next()V

    return-void
.end method
