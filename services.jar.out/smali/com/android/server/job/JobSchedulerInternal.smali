.class public interface abstract Lcom/android/server/job/JobSchedulerInternal;
.super Ljava/lang/Object;
.source "JobSchedulerInternal.java"


# virtual methods
.method public abstract addBackingUpUid(I)V
.end method

.method public abstract cancelJobsForPackageAndUid(Ljava/lang/String;I)V
.end method

.method public abstract clearAllBackingUpUids()V
.end method

.method public abstract getSystemScheduledPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeBackingUpUid(I)V
.end method
