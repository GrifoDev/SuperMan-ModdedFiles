.class final synthetic Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    iget-object v1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->-$f0:I

    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->lambda$-com_android_server_accounts_AccountManagerService_263161(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->-$f0:I

    iput-object p2, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU$3;->$m$0()V

    return-void
.end method
