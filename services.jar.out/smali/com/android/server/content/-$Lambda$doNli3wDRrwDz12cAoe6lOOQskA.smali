.class final synthetic Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/accounts/Account;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncManager;->lambda$-com_android_server_content_SyncManager_23688(Landroid/accounts/Account;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAppPermissionChanged(Landroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$m$0(Landroid/accounts/Account;I)V

    return-void
.end method
