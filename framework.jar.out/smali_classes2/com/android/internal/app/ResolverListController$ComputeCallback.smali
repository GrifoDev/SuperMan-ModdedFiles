.class Lcom/android/internal/app/ResolverListController$ComputeCallback;
.super Ljava/lang/Object;
.source "ResolverListController.java"

# interfaces
.implements Lcom/android/internal/app/ResolverComparator$AfterCompute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputeCallback"
.end annotation


# instance fields
.field private mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/internal/app/ResolverListController;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->this$0:Lcom/android/internal/app/ResolverListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public afterCompute()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
