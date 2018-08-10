.class public abstract Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;
.super Landroid/support/v7/widget/RecyclerView;
.source "AbstractTaskGridView.java"

# interfaces
.implements Lcom/android/systemui/recents/views/ITaskStackView;
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;
    }
.end annotation


# instance fields
.field private mEventBusObject:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;

.field protected mReusingAdapter:Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

.field protected mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->syncTaskLockState(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->create(Landroid/content/Context;)V

    return-void
.end method

.method private create(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;-><init>(Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mEventBusObject:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method private syncTaskLockState(Lcom/android/systemui/recents/model/Task;)V
    .locals 10

    const-string/jumbo v5, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v6, "syncTaskLockState() task=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iput-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->updateViewLockState()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iput-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    goto :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method protected detachChildViews()V
    .locals 2

    const-string/jumbo v0, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v1, "detachChildViews()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    return-object v0
.end method

.method public getHolderForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->isTaskBound()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method protected hidePairedTask()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/sec/base/-$Lambda$bkJI86Uk4PnO2xvzxjfMAmY502k;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/sec/base/-$Lambda$bkJI86Uk4PnO2xvzxjfMAmY502k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_sec_base_AbstractTaskGridView_7770(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mEventBusObject:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->readSystemFlags(Landroid/content/Context;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/SyncTaskLockEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/SyncTaskLockEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->syncTaskLockState(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mEventBusObject:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const-string/jumbo v0, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v1, "onLayout() [%b, %d, %d, %d, %d]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->onSizeChanged(II)V

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->updatePadding(II)Z

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onPrepareEnterAnimationAfterLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPrepareEnterAnimationAfterLayout()V
.end method

.method public onReload(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v3, "onReload(isResumingFromVisible:%b) - full layout=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-nez v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->readSystemFlags(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mReusingAdapter:Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v2, "onStackTaskAdded() - newTask=%s\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getIndexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->notifyItemInserted(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "TabletRecents_AbstractTaskGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to find the added task %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v5, "onStackTaskRemoved() - removedTask=%s, newFrontMostTask=%s"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/recents/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v6, v3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/systemui/recents/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v4, v3}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    if-eqz p6, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_3

    const v2, 0x7f120961

    move v4, v2

    :goto_2
    if-eqz p7, :cond_4

    xor-int/lit8 v2, p5, 0x1

    :goto_3
    invoke-direct {v6, v4, v2}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    :goto_4
    return-void

    :cond_1
    const-string/jumbo v2, "no_task"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "no_task"

    goto :goto_1

    :cond_3
    const v2, 0x7f120962

    move v4, v2

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getHolderForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->notifyItemRemoved(I)V

    goto :goto_4

    :cond_7
    const-string/jumbo v2, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v4, "%s has no position. Is already removed?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 4

    const-string/jumbo v0, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v1, "onStackTasksRemoved()\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    const v2, 0x7f120962

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 3

    const-string/jumbo v0, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v1, "onStackTasksUpdated()\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v2

    iget-object v1, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    const-string/jumbo v2, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v3, "setSystemInsets() systemInsets=%s, changed=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 3

    const-string/jumbo v1, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v2, "setTasks()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected showAllTasks()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->resetIgnoreTasks()V

    return-void
.end method

.method protected updatePadding(II)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v2

    iget-object v6, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mRvSidePadding:I

    add-int v3, v6, v7

    iget-object v6, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mRvSidePadding:I

    add-int v4, v6, v7

    iget-object v6, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mButtonContainerHeight:I

    add-int v5, v6, v7

    iget-object v6, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mCloseAllContainerHeight:I

    add-int v0, v6, v7

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getPaddingLeft()I

    move-result v6

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getPaddingRight()I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0, v3, v5, v4, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->setPadding(IIII)V

    const-string/jumbo v6, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v7, "updatePadding() [l:%d, t:%d, r:%d, b:%d]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getPaddingTop()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getPaddingBottom()I

    move-result v6

    if-eq v0, v6, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v10
.end method

.method public updateTaskLockState(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "TabletRecents_AbstractTaskGridView"

    const-string/jumbo v5, "updateTaskLockState() - isDone=%b"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-nez v4, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskLockPreference;->getLockedTasksCount()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v4, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveLockedTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-boolean v9, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    goto :goto_1

    :cond_6
    iput-boolean v8, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    goto :goto_1
.end method
