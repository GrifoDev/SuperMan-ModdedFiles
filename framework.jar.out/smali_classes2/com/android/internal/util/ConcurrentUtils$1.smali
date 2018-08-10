.class final Lcom/android/internal/util/ConcurrentUtils$1;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$linuxThreadPriority:I

.field final synthetic val$poolName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/util/ConcurrentUtils$1;->val$poolName:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/util/ConcurrentUtils$1;->val$linuxThreadPriority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ConcurrentUtils$1;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Lcom/android/internal/util/ConcurrentUtils$1$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/util/ConcurrentUtils$1;->val$poolName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ConcurrentUtils$1;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/ConcurrentUtils$1;->val$linuxThreadPriority:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/internal/util/ConcurrentUtils$1$1;-><init>(Lcom/android/internal/util/ConcurrentUtils$1;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-object v0
.end method
