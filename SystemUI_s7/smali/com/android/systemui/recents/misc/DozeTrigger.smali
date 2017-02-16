.class public Lcom/android/systemui/recents/misc/DozeTrigger;
.super Ljava/lang/Object;
.source "DozeTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/DozeTrigger$1;
    }
.end annotation


# instance fields
.field mDozeDurationMilliseconds:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mDozeRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mIsAsleep:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mIsDozing:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mOnSleepRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/DozeTrigger$1;-><init>(Lcom/android/systemui/recents/misc/DozeTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationMilliseconds:I

    iput-object p2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mOnSleepRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method forcePoke()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    return-void
.end method

.method public isAsleep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    return v0
.end method

.method public poke()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/DozeTrigger;->forcePoke()V

    :cond_0
    return-void
.end method

.method public setDozeDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeDurationMilliseconds:I

    return-void
.end method

.method public startDozing()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/DozeTrigger;->forcePoke()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    return-void
.end method

.method public stopDozing()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mDozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    return-void
.end method
