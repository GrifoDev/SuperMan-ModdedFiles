.class Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;
.super Lcom/sec/knox/container/util/DaemonConnectorException;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaemonFailureException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/sec/knox/container/util/DaemonEvent;

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    .line 449
    return-void
.end method
