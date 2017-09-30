.class public Lcom/yulore/sdk/ivr/service/IvrCacheService;
.super Landroid/app/IntentService;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/sdk/ivr/service/IvrCacheService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yulore/sdk/ivr/a/a;

.field private b:Lcom/yulore/a/a/e/e;

.field private c:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

.field private d:Z

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "IVR update service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d:Z

    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;

    invoke-direct {v0, p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService$1;-><init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->e:Landroid/os/Handler;

    const-string v0, "YuloreIVR"

    const-string v1, " IVR update service start running "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/a/a/e/e;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b:Lcom/yulore/a/a/e/e;

    return-object v0
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " local Version number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;

    invoke-direct {v1, p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService$2;-><init>(Lcom/yulore/sdk/ivr/service/IvrCacheService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "YuloreIVR"

    const-string v1, " update url is null"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "?apikey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/yulore/sdk/ivr/e/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yulore/a/a/a/b;->a(Landroid/content/Context;)Lcom/yulore/a/a/a/b;

    move-result-object v1

    new-instance v2, Lcom/yulore/a/a/a/b$a;

    invoke-direct {v2}, Lcom/yulore/a/a/a/b$a;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yulore/a/a/a/b$a;->a(Ljava/lang/String;)Lcom/yulore/a/a/a/b$a;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yulore/a/a/a/b$a;->a(Ljava/io/File;)Lcom/yulore/a/a/a/b$a;

    const-string v3, "ivr.zip"

    invoke-virtual {v2, v3}, Lcom/yulore/a/a/a/b$a;->b(Ljava/lang/String;)Lcom/yulore/a/a/a/b$a;

    const-string v3, "request packet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download zip file url ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/yulore/a/a/a/b;->a(Lcom/yulore/a/a/a/b$a;)Z

    move-result v0

    const-string v1, "YuloreIVR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download zip file result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b:Lcom/yulore/a/a/e/e;

    const-string v2, "version"

    invoke-virtual {v1, v2, p1}, Lcom/yulore/a/a/e/e;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Lcom/yulore/sdk/ivr/model/c;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YuloreIVR"

    const-string v1, " update a part of offline files "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "YuloreIVR"

    const-string v1, " update all offline files "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/service/IvrCacheService;Lcom/yulore/sdk/ivr/model/c;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Lcom/yulore/sdk/ivr/model/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/service/IvrCacheService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/service/IvrCacheService$a;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->c:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/sdk/ivr/e/g;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yulore/a/a/e/c;->a(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Lcom/yulore/sdk/ivr/a/a;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/yulore/sdk/ivr/service/IvrCacheService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/yulore/a/a/e/e$a;

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulore/a/a/e/e$a;-><init>(Landroid/content/Context;)V

    const-string v1, "yulore_ivr"

    invoke-virtual {v0, v1}, Lcom/yulore/a/a/e/e$a;->a(Ljava/lang/String;)Lcom/yulore/a/a/e/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulore/a/a/e/e$a;->a(I)Lcom/yulore/a/a/e/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/a/a/e/e$a;->a()Lcom/yulore/a/a/e/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b:Lcom/yulore/a/a/e/e;

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const-string v0, "YuloreIVR"

    const-string v1, " IVR update service stop running "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "YuloreIVR"

    const-string v1, " start update task "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a:Lcom/yulore/sdk/ivr/a/a;

    invoke-virtual {v0}, Lcom/yulore/sdk/ivr/a/a;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/e/d;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b:Lcom/yulore/a/a/e/e;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/yulore/a/a/e/e;->b(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/sdk/ivr/e/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/service/IvrCacheService;->b:Lcom/yulore/a/a/e/e;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulore/sdk/ivr/service/IvrCacheService;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
