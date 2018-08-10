.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;,
        Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerDraging:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPackagesShownInSession:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityDismissingDockedStack()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    return-void
.end method

.method private activityDismissingDockedStack()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    const v2, 0x7f120a33

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private activityForcedResizable(Ljava/lang/String;II)V
    .locals 3

    const v1, 0x186a0

    div-int v0, p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->debounce(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;II)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->postTimeout()V

    return-void
.end method

.method private activityLaunchOnSecondaryDisplayFailed()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    const v2, 0x7f120103

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private debounce(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private postTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPending()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iget v4, v3, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->taskId:I

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v2, v7, v7}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    const-string/jumbo v4, "extra_forced_resizeable_reason"

    iget v5, v3, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->reason:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v4, v3, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->reason:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/high16 v4, 0x40000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    return-void
.end method


# virtual methods
.method public notifyDockedStackExistsChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StartedDragingEvent;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method
