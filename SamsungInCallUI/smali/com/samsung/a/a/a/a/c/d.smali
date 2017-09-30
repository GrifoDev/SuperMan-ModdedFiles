.class public Lcom/samsung/a/a/a/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/c/c;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Lcom/samsung/a/a/a/a/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/a/a/a/a/c/d$1;

    invoke-direct {v0, p0}, Lcom/samsung/a/a/a/a/c/d$1;-><init>(Lcom/samsung/a/a/a/a/c/d;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/a/a/a/a/c/d;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/samsung/a/a/a/a/c/c;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/c/d;->b:Lcom/samsung/a/a/a/a/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/c/d;

    invoke-direct {v0}, Lcom/samsung/a/a/a/a/c/d;-><init>()V

    sput-object v0, Lcom/samsung/a/a/a/a/c/d;->b:Lcom/samsung/a/a/a/a/c/d;

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/a/c/d;->b:Lcom/samsung/a/a/a/a/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/a/a/a/a/c/b;)V
    .locals 2

    sget-object v0, Lcom/samsung/a/a/a/a/c/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/a/a/a/a/c/d$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/a/a/a/a/c/d$2;-><init>(Lcom/samsung/a/a/a/a/c/d;Lcom/samsung/a/a/a/a/c/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
