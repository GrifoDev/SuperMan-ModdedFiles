.class public Lcom/sec/android/app/sysscope/job/KernelStatusChecker;
.super Lcom/sec/android/app/sysscope/engine/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cordon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/m;-><init>()V

    const-string v0, "Official"

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b:J

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->g:Lcom/sec/android/app/sysscope/service/g;

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->getCmdLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->getCmdLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " custom binary download count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Kernel Checker"

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native getCmdLine()Ljava/lang/String;
.end method
