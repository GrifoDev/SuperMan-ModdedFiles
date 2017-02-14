.class public final Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public avgPss:J

.field public avgUss:J

.field public maxPss:J

.field public maxUss:J

.field final memStates:[I

.field public minPss:J

.field public minUss:J

.field public numPss:J

.field final procStates:[I

.field final screenStates:[I

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    iput-object p3, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintWriter;JZ)V
    .locals 6

    const-wide/16 v4, 0x400

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v0, v0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    if-eqz p4, :cond_1

    const-string/jumbo v0, " over "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
