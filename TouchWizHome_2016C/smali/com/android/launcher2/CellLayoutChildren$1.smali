.class Lcom/android/launcher2/CellLayoutChildren$1;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayoutChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutChildren;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher2/Workspace;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher2/WorkspacePages;->itemAddedToPage(ILandroid/content/Context;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->isNeedToIconVI()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06002c

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v4, 0x113

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    iget v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mIconShowVI_StartDelay:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    iget v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mIconShowVI_StartDelay:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher2/BaseItem;->setNeetToIconVI(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, p2}, Lcom/android/launcher2/CellLayoutChildren;->onViewAddedInCLC(Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppItem;->setLoadingListener(Lcom/android/launcher2/BaseItem$LoadingListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren$1;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutChildren;->onViewRemovedInCLC(Landroid/view/View;)V

    return-void
.end method
