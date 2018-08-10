.class Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackEntry"
.end annotation


# instance fields
.field final callback:Landroid/os/ProxyFileDescriptorCallback;

.field final handler:Landroid/os/Handler;

.field opened:Z


# direct methods
.method constructor <init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ProxyFileDescriptorCallback;

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getThreadId()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method
