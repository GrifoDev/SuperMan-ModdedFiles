.class final Ljava/io/SerialCallbackContext;
.super Ljava/lang/Object;
.source "SerialCallbackContext.java"


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final obj:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    iput-object p2, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    return-void
.end method

.method private checkAndSetUsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "not in readObject invocation or fields already read"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/SerialCallbackContext;->checkAndSetUsed()V

    iget-object v0, p0, Ljava/io/SerialCallbackContext;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setUsed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SerialCallbackContext;->thread:Ljava/lang/Thread;

    return-void
.end method
