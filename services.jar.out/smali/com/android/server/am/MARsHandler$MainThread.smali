.class Lcom/android/server/am/MARsHandler$MainThread;
.super Ljava/lang/Thread;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p3, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    new-instance v1, Lcom/android/server/am/MARsHandler$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;-><init>(Lcom/android/server/am/MARsHandler;)V

    iput-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
