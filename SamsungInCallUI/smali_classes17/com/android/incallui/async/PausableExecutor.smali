.class public interface abstract Lcom/android/incallui/async/PausableExecutor;
.super Ljava/lang/Object;
.source "PausableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public abstract ackAllMilestonesForTesting()V
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation
.end method

.method public abstract ackMilestoneForTesting()V
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation
.end method

.method public abstract awaitMilestoneForTesting()V
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract milestone()V
.end method
