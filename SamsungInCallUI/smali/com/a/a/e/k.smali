.class public Lcom/a/a/e/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final c:Lcom/a/a/e/k;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/a/a/e/j;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/q;",
            "Lcom/a/a/e/n;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/a/a/j;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/e/k;

    invoke-direct {v0}, Lcom/a/a/e/k;-><init>()V

    sput-object v0, Lcom/a/a/e/k;->c:Lcom/a/a/e/k;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/k;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/k;->b:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/a/a/e/k;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/a/a/e/k;
    .locals 1

    sget-object v0, Lcom/a/a/e/k;->c:Lcom/a/a/e/k;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/a/a/j;
    .locals 4

    iget-object v0, p0, Lcom/a/a/e/k;->d:Lcom/a/a/j;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/e/k;->d:Lcom/a/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/a/a/e/b;

    invoke-direct {v2}, Lcom/a/a/e/b;-><init>()V

    new-instance v3, Lcom/a/a/e/f;

    invoke-direct {v3}, Lcom/a/a/e/f;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/j;-><init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;)V

    iput-object v0, p0, Lcom/a/a/e/k;->d:Lcom/a/a/j;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/e/k;->d:Lcom/a/a/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/app/FragmentManager;)Lcom/a/a/e/j;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/e/j;

    invoke-direct {v0}, Lcom/a/a/e/j;-><init>()V

    iget-object v1, p0, Lcom/a/a/e/k;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/a/a/e/k;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v0
.end method

.method a(Landroid/support/v4/app/q;)Lcom/a/a/e/n;
    .locals 3

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/q;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/k;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/e/n;

    invoke-direct {v0}, Lcom/a/a/e/n;-><init>()V

    iget-object v1, p0, Lcom/a/a/e/k;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->a()Landroid/support/v4/app/t;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/t;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/t;->b()I

    iget-object v1, p0, Lcom/a/a/e/k;->e:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/app/Activity;)Lcom/a/a/j;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e/k;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/a/a/e/k;->b(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/e/k;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Lcom/a/a/j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/a/a/j/h;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/support/v4/app/m;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/m;

    invoke-virtual {p0, p1}, Lcom/a/a/e/k;->a(Landroid/support/v4/app/m;)Lcom/a/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/a/a/e/k;->a(Landroid/app/Activity;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e/k;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/a/a/e/k;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/a/a/j;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0, p2}, Lcom/a/a/e/k;->a(Landroid/app/FragmentManager;)Lcom/a/a/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/e/j;->b()Lcom/a/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/e/j;->a()Lcom/a/a/e/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/a/a/e/j;->c()Lcom/a/a/e/l;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/a/a/j;-><init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;)V

    invoke-virtual {v1, v0}, Lcom/a/a/e/j;->a(Lcom/a/a/j;)V

    :cond_0
    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/support/v4/app/q;)Lcom/a/a/j;
    .locals 4

    invoke-virtual {p0, p2}, Lcom/a/a/e/k;->a(Landroid/support/v4/app/q;)Lcom/a/a/e/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/e/n;->L()Lcom/a/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/e/n;->a()Lcom/a/a/e/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/a/a/e/n;->M()Lcom/a/a/e/l;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/a/a/j;-><init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;)V

    invoke-virtual {v1, v0}, Lcom/a/a/e/n;->a(Lcom/a/a/j;)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/v4/app/m;)Lcom/a/a/j;
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/m;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e/k;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/a/a/e/k;->b(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/support/v4/app/m;->f()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/e/k;->a(Landroid/content/Context;Landroid/support/v4/app/q;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string v1, "RMRetriever"

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RMRetriever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/a/a/e/k;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/q;

    iget-object v1, p0, Lcom/a/a/e/k;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
