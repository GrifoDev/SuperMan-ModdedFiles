.class public Lcom/samsung/android/sdk/bixby/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/a$g;,
        Lcom/samsung/android/sdk/bixby/a$h;,
        Lcom/samsung/android/sdk/bixby/a$a;,
        Lcom/samsung/android/sdk/bixby/a$j;,
        Lcom/samsung/android/sdk/bixby/a$e;,
        Lcom/samsung/android/sdk/bixby/a$b;,
        Lcom/samsung/android/sdk/bixby/a$d;,
        Lcom/samsung/android/sdk/bixby/a$i;,
        Lcom/samsung/android/sdk/bixby/a$c;,
        Lcom/samsung/android/sdk/bixby/a$f;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static l:Lcom/samsung/android/sdk/bixby/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/os/Handler;

.field private d:Lcom/samsung/android/sdk/bixby/a$i;

.field private e:Lcom/samsung/android/sdk/bixby/a$d;

.field private f:Lcom/samsung/android/sdk/bixby/a$b;

.field private g:Lcom/samsung/android/sdk/bixby/a$e;

.field private h:Lcom/samsung/android/sdk/bixby/a$a;

.field private i:Lcom/samsung/android/sdk/bixby/a$j;

.field private j:Lcom/samsung/android/sdk/bixby/a$g;

.field private k:Lcom/samsung/android/sdk/bixby/data/c;

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/samsung/android/sdk/bixby/data/State;

.field private t:Lcom/samsung/android/sdk/bixby/data/b;

.field private u:Z

.field private v:Ljava/lang/Runnable;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_0.1.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/bixby/data/c;->a:Lcom/samsung/android/sdk/bixby/data/c;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->k:Lcom/samsung/android/sdk/bixby/data/c;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->b:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/a;->n:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/a;->o:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/a;->p:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/bixby/a;->s:Lcom/samsung/android/sdk/bixby/data/State;

    iput-object v2, p0, Lcom/samsung/android/sdk/bixby/a;->t:Lcom/samsung/android/sdk/bixby/data/b;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/a;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/a;)Lcom/samsung/android/sdk/bixby/a$d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/samsung/android/sdk/bixby/a;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/bixby/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/a;
    .locals 5

    const-class v1, Lcom/samsung/android/sdk/bixby/a;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/bixby/a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/a;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/a;->c(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance(), cannot get versionName from package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->l:Lcom/samsung/android/sdk/bixby/a;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/bixby/a;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->v:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->m:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/a$h;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->i:Lcom/samsung/android/sdk/bixby/a$j;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/a$j;->a()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/a;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->e:Lcom/samsung/android/sdk/bixby/a$h;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/a;->b(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->j:Lcom/samsung/android/sdk/bixby/a$g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->j:Lcom/samsung/android/sdk/bixby/a$g;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/a$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "esem_state_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "esem_cancel_chatty_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v1, "Bixby Agent is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/bixby/a;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/bixby/a;->w:I

    return v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/bixby/a;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/bixby/a;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/bixby/a;->w:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->r:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/a;->n:Z

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v1, "SeqNo 0 found. isTestMode true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "setupParameters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "setupParameters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/a;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->f:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->i:Lcom/samsung/android/sdk/bixby/a$j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->i:Lcom/samsung/android/sdk/bixby/a$j;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/bixby/a$j;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid JSON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->f:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->f:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/a$d;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/c;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/bixby/data/c;->a:Lcom/samsung/android/sdk/bixby/data/c;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial Landing handler requires the current state ID. onScreenStatesRequested() is not allowed to return null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/c;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/a$a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/samsung/android/sdk/bixby/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    return-void
.end method

.method a(Lcom/samsung/android/sdk/bixby/a$g;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->j:Lcom/samsung/android/sdk/bixby/a$g;

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/a$h;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->s:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v1, "Invalid sendResponse call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    :cond_1
    :goto_1
    const-string v0, "state_command_result"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->s:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->s:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->f:Lcom/samsung/android/sdk/bixby/a$h;

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/a;->a(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/a;->b(Z)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/a;->c(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->s:Lcom/samsung/android/sdk/bixby/data/State;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->a:Lcom/samsung/android/sdk/bixby/a$h;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    goto :goto_1
.end method

.method public a(Lcom/samsung/android/sdk/bixby/a$i;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->d:Lcom/samsung/android/sdk/bixby/a$i;

    return-void
.end method

.method a(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/bixby/a$d;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->a:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "esem_param_filling_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v2, "InterimListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/a;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$f;->c:Lcom/samsung/android/sdk/bixby/a$f;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;Lcom/samsung/android/sdk/bixby/a$f;)V

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/a;Lcom/samsung/android/sdk/bixby/a$f;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NlgRequestInfo cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"currentStateIds\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"requestedAppName\":\"%s\",%s,%s,%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/a;->q:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/a;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/a$f;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_request_nlg"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/samsung/android/sdk/bixby/data/b;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->t:Lcom/samsung/android/sdk/bixby/data/b;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/a$a;->a(Lcom/samsung/android/sdk/bixby/data/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appName should not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/a;->q:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->f:Lcom/samsung/android/sdk/bixby/a$b;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v2, "ChattyModeListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "esem_chatty_mode_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->f:Lcom/samsung/android/sdk/bixby/a$b;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/bixby/a$b;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->a:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lorg/json/JSONArray;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ""

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/a;->g:Lcom/samsung/android/sdk/bixby/a$e;

    if-nez v2, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v2, "MultiPathRuleListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string v1, "esem_split_state_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->g:Lcom/samsung/android/sdk/bixby/a$e;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/a$e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/a;->p:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/a$d;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->k:Lcom/samsung/android/sdk/bixby/data/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    goto :goto_0
.end method

.method b(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/a$a;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/a;->a(Z)V

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby/e;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->s:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/a;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->d:Lcom/samsung/android/sdk/bixby/a$i;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/bixby/a$i;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/a;->a(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->d:Lcom/samsung/android/sdk/bixby/a$i;

    if-nez v1, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v1, "No listener is set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/bixby/a$d;->onRuleCanceled(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->d:Lcom/samsung/android/sdk/bixby/a$i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->d:Lcom/samsung/android/sdk/bixby/a$i;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/bixby/a$i;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->v:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v2, "Remove pending state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/a;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iput v3, p0, Lcom/samsung/android/sdk/bixby/a;->w:I

    new-instance v1, Lcom/samsung/android/sdk/bixby/a$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/bixby/a$1;-><init>(Lcom/samsung/android/sdk/bixby/a;Lcom/samsung/android/sdk/bixby/data/State;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->v:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/a;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/sdk/bixby/a;->n:Z

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/a;->o:Z

    return-void
.end method

.method c()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/a;->e:Lcom/samsung/android/sdk/bixby/a$d;

    invoke-interface {v3}, Lcom/samsung/android/sdk/bixby/a$d;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/c;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"appName\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/a;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/sdk/bixby/data/c;->a:Lcom/samsung/android/sdk/bixby/data/c;

    if-eq v3, v4, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/c;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/a;->f:Lcom/samsung/android/sdk/bixby/a$b;

    if-eqz v1, :cond_0

    const-string v1, ",\"isChattyModeSupported\":true"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"result\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->a:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"appContext\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_context_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v3, "No state ids."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v3, "STATE_NOT_APPLICABLE"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"appName\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/a;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v4, "InterimListener is not set. "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/a;->k:Lcom/samsung/android/sdk/bixby/data/c;

    sget-object v4, Lcom/samsung/android/sdk/bixby/data/c;->a:Lcom/samsung/android/sdk/bixby/data/c;

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v4, "Lastly backed up Screen State info used."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/a;->k:Lcom/samsung/android/sdk/bixby/data/c;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/c;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/bixby/a;->c:Ljava/lang/String;

    const-string v3, "No state ids."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"result\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/a$h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/a;->u:Z

    return-void
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a$a;->a()V

    goto :goto_0
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/a;->h:Lcom/samsung/android/sdk/bixby/a$a;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a$a;->b()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/a;->o:Z

    return v0
.end method
