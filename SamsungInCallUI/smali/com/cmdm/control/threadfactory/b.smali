.class public Lcom/cmdm/control/threadfactory/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Lcom/cmdm/control/threadfactory/h;

    invoke-direct {v0, p1}, Lcom/cmdm/control/threadfactory/h;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/cmdm/control/threadfactory/h;->D(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/threadfactory/h;->setPriority(I)V

    return-object v0
.end method
