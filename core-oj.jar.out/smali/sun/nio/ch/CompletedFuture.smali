.class final Lsun/nio/ch/CompletedFuture;
.super Ljava/lang/Object;
.source "CompletedFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final exc:Ljava/lang/Throwable;

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lsun/nio/ch/CompletedFuture;->result:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    .line 42
    return-void
.end method

.method static withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;
    .locals 3
    .param p0, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lsun/nio/ch/CompletedFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    instance-of v1, p0, Ljava/io/IOException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    new-instance v1, Lsun/nio/ch/CompletedFuture;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lsun/nio/ch/CompletedFuture;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1

    .line 54
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "exc":Ljava/lang/Throwable;
    .local v0, "exc":Ljava/lang/Throwable;
    move-object p0, v0

    .end local v0    # "exc":Ljava/lang/Throwable;
    .restart local p0    # "exc":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method static withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lsun/nio/ch/CompletedFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "result":Ljava/lang/Object;, "TV;"
    new-instance v0, Lsun/nio/ch/CompletedFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/CompletedFuture;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;
    .locals 1
    .param p1, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Ljava/lang/Throwable;",
            ")",
            "Lsun/nio/ch/CompletedFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "result":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 60
    invoke-static {p0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    invoke-static {p1}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 94
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    if-nez p3, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method
