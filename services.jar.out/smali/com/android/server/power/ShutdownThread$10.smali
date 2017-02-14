.class Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$continueSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$10;->val$continueSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get20()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get8(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-wrap6(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$10;->val$continueSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
