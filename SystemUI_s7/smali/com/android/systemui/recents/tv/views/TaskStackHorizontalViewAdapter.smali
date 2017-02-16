.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TaskStackHorizontalViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTaskAt(Lcom/android/systemui/recents/model/Task;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionOfTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->init(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "uimode"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v4, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    const v5, 0x7f040119

    invoke-virtual {v0, v5, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V

    return-object v4

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    const v5, 0x7f040128

    invoke-virtual {v0, v5, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V

    return-object v4
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyItemRemoved(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    :cond_0
    return-void
.end method

.method public setNewStackTasks(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTaskStackHorizontalGridView(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    return-void
.end method
