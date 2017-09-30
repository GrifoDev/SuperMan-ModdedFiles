.class public Lcom/yulore/a/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/a/a/a/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/yulore/a/a/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/yulore/a/a/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/a/a/a/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/yulore/a/a/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulore/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yulore/a/a/a/b;->c:Lcom/yulore/a/a/a/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yulore/a/a/a/b;
    .locals 2

    sget-object v0, Lcom/yulore/a/a/a/b;->a:Lcom/yulore/a/a/a/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/yulore/a/a/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulore/a/a/a/b;->a:Lcom/yulore/a/a/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulore/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/yulore/a/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yulore/a/a/a/b;->a:Lcom/yulore/a/a/a/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/yulore/a/a/a/b;->a:Lcom/yulore/a/a/a/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yulore/a/a/a/b$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/a/b;->c:Lcom/yulore/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/yulore/a/a/a/a;->a(Lcom/yulore/a/a/a/b$a;)Z

    move-result v0

    return v0
.end method
