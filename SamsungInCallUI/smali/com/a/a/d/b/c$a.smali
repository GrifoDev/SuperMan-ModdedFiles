.class Lcom/a/a/d/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/a/a/d/b/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/a/a/d/b/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/c$a;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/a/a/d/b/c$a;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/a/a/d/b/c$a;->c:Lcom/a/a/d/b/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/c;Z)Lcom/a/a/d/b/d;
    .locals 6

    new-instance v0, Lcom/a/a/d/b/d;

    iget-object v2, p0, Lcom/a/a/d/b/c$a;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/a/a/d/b/c$a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/a/a/d/b/c$a;->c:Lcom/a/a/d/b/e;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/d/b/d;-><init>(Lcom/a/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/a/a/d/b/e;)V

    return-object v0
.end method
