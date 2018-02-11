.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TaskStackHorizontalViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

.field final synthetic this$0:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->this$0:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lcom/android/systemui/recents/tv/views/TaskCardView;

    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    return-void
.end method

.method private getRemoveAtListener(ILcom/android/systemui/recents/model/Task;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;Lcom/android/systemui/recents/model/Task;)V

    return-object v0
.end method


# virtual methods
.method public init(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->init(Lcom/android/systemui/recents/model/Task;)V

    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->getRemoveAtListener(ILcom/android/systemui/recents/model/Task;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->startDismissTaskAnimation(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TaskStackViewAdapter"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f045b

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
