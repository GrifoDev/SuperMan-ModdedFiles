.class public Lcom/cmdm/control/threadfactory/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 19
    new-instance v0, Lcom/cmdm/control/threadfactory/h;

    invoke-direct {v0, p1}, Lcom/cmdm/control/threadfactory/h;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .local v0, "t":Lcom/cmdm/control/threadfactory/h;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/cmdm/control/threadfactory/h;->D(I)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/threadfactory/h;->setPriority(I)V

    .line 22
    return-object v0
.end method
