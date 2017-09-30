.class Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/common/model/AccountTypeManager;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/net/Uri;

.field private static final t:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/accounts/AccountManager;

.field private e:Lcom/android/contacts/common/model/account/AccountType;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Landroid/os/HandlerThread;

.field private o:Landroid/os/Handler;

.field private final p:Landroid/os/Handler;

.field private final q:Ljava/lang/Runnable;

.field private r:Landroid/content/BroadcastReceiver;

.field private volatile s:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a:Ljava/util/Map;

    const-wide/16 v0, 0x1

    const-string v2, "xxx"

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->b:Landroid/net/Uri;

    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;

    invoke-direct {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManager;-><init>()V

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->f:Ljava/util/List;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->g:Ljava/util/List;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->h:Ljava/util/List;

    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->i:Ljava/util/Map;

    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->p:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->r:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->s:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    new-instance v0, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->e:Lcom/android/contacts/common/model/account/AccountType;

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->d:Landroid/accounts/AccountManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccountChangeListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->n:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->n:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->o:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->k:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->d:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    invoke-static {v4, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->o:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected static a([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 4

    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AccountTypeManager"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AccountTypeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " inviteClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->h()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountType;->a:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->a:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType;

    sget-object v6, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->b:Landroid/net/Uri;

    invoke-static {v1, v6}, Lcom/android/contacts/common/MoreContactUtils;->a(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/high16 v6, 0x10000

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->k:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic d(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c()V

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->j:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->e:Lcom/android/contacts/common/model/account/AccountType;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c()V

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->h:Ljava/util/List;

    return-object v0
.end method

.method public a(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->g:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->f:Ljava/util/List;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c()V

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->k:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->k:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->k:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->s:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected d()V
    .locals 24

    const-string v4, "ContactsPerf"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ContactsPerf"

    const-string v5, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Landroid/util/TimingLogger;

    const-string v4, "AccountTypeManager"

    const-string v5, "loadAccountsInBackground"

    invoke-direct {v6, v4, v5}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {}, Lcom/google/a/b/v;->b()Ljava/util/HashMap;

    move-result-object v12

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {}, Lcom/google/a/b/ae;->a()Ljava/util/HashSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->d:Landroid/accounts/AccountManager;

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v17

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v18

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    move/from16 v0, v19

    if-ge v5, v0, :cond_8

    aget-object v4, v17, v5

    const-string v20, "com.android.contacts"

    iget-object v0, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    iget-object v0, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v21

    if-nez v21, :cond_3

    const-string v4, "AccountTypeManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No authenticator found for type="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", ignoring it."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v4, "com.google"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/contacts/common/model/account/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/android/contacts/common/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->a()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->b()Z

    move-result v20

    if-eqz v20, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem initializing embedded type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/android/contacts/common/model/account/SamsungAccountType;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/android/contacts/common/model/account/SamsungAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v4, "AccountTypeManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Registering external account type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", packageName="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v4, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->a:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v4, Lcom/android/contacts/common/model/account/AccountType;->e:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v4, Lcom/android/contacts/common/model/account/AccountType;->f:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v12}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->i()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "AccountTypeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Registering "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, " extension packages"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v16, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/common/model/account/ExternalAccountType;->k()Z

    move-result v17

    if-nez v17, :cond_a

    const-string v16, "AccountTypeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping extension package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " because"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v16, "AccountTypeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping extension package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " because"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " attribute"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    const-string v17, "AccountTypeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Registering extension package account type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", dataSet="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", packageName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7, v12}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_c
    const-string v4, "Loaded account types"

    invoke-virtual {v6, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->d:Landroid/accounts/AccountManager;

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    aget-object v18, v16, v5

    const-string v4, "com.android.contacts"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_10

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_d
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType;

    new-instance v20, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/contacts/common/model/account/AccountType;->b:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->d()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->j()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    goto :goto_5

    :cond_10
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    :cond_11
    sget-object v4, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->t:Ljava/util/Comparator;

    invoke-static {v13, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v4, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->t:Ljava/util/Comparator;

    invoke-static {v14, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v4, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->t:Ljava/util/Comparator;

    invoke-static {v15, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v4, "Loaded accounts"

    invoke-virtual {v6, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->i:Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c:Landroid/content/Context;

    invoke-static {v4, v13, v7}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->j:Ljava/util/Map;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-string v12, "AccountTypeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Loaded meta-data for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " account types, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->f:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " accounts in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long/2addr v4, v10

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms(wall) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms(cpu)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->s:Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->s:Ljava/util/concurrent/CountDownLatch;

    :cond_12
    const-string v4, "ContactsPerf"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "ContactsPerf"

    const-string v5, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->p:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->q:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->d()V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
