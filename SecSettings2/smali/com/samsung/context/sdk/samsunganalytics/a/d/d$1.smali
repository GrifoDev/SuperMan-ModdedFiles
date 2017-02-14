.class Lcom/samsung/context/sdk/samsunganalytics/a/d/d$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/d/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/d/d;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string/jumbo v1, "newThread on Executor"

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    return-object v0
.end method
