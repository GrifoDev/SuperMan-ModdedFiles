.class Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountAuthorityValidator"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProvidersPerUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/accounts/AccountManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method isAccountValid(Landroid/accounts/Account;I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, p2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mAccountsCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isAuthorityValid(Ljava/lang/String;I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mProvidersPerUserCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
