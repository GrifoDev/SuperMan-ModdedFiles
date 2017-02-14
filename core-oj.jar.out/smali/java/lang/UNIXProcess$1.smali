.class final Ljava/lang/UNIXProcess$1;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/UNIXProcess$1;->run()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;-><init>(Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
