.class public Lcom/samsung/a/a/a/a/f/c/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/samsung/a/a/a/a/f/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/c/b/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/a/a/a/a/f/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/b/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public a(Lcom/samsung/a/a/a/a/f/d;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/b/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QueueManager"

    const-string v1, "queue size over. remove oldest log"

    invoke-static {v0, v1}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/b/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/b/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
