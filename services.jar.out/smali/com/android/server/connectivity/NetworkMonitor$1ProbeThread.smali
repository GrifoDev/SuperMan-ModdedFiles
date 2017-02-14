.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mIsHttps:Z

.field private volatile mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$finalResult:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    return-void
.end method


# virtual methods
.method public getResult()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    goto :goto_0
.end method
