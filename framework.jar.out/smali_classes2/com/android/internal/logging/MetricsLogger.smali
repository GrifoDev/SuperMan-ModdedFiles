.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field public static final LOGTAG:I = 0x80004

.field public static final VIEW_UNKNOWN:I

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    return-void
.end method

.method public static action(Landroid/metrics/LogMaker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    return-void
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static hidden(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    return-void
.end method

.method public static visible(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method


# virtual methods
.method public action(I)V
    .locals 2

    const-string/jumbo v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method public action(II)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method public action(ILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method public action(IZ)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x323

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method public hidden(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, v1}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method public histogram(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x324

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterBucket(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method protected saveLog([Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/logging/EventLogTags;->writeSysuiMultiAction([Ljava/lang/Object;)V

    return-void
.end method

.method public visibility(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    return-void
.end method

.method public visibility(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    goto :goto_0
.end method

.method public visible(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method

.method public write(Landroid/metrics/LogMaker;)V
    .locals 1

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    :cond_0
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog([Ljava/lang/Object;)V

    return-void
.end method
