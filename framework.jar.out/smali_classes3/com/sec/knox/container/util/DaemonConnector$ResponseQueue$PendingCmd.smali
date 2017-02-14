.class Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingCmd"
.end annotation


# instance fields
.field public availableResponseCount:I

.field public cmdNum:I

.field public request:Ljava/lang/String;

.field public responses:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/knox/container/util/DaemonEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    iput p1, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    iput-object p2, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    return-void
.end method
