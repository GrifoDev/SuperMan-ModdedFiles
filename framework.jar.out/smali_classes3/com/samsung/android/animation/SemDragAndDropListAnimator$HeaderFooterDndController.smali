.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "SemDragAndDropListAnimator.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void
.end method


# virtual methods
.method public canDrag(I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HeaderFooterDndController : canDrag #3 mListView.getHeaderViewsCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method public canDrop(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HeaderFooterDndController : canDrop #4 startPos - mListView.getHeaderViewsCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", destPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method public dropDone(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    :cond_1
    :goto_1
    const-string/jumbo v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "HeaderFooterDndController : dropDone : mWrappedController.dropDone #3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HeaderFooterDndController : dropDone : startPos - mListView.getHeaderViewsCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemDragAndDropListAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HeaderFooterDndController : dropDone : destPos - mListView.getHeaderViewsCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p2, v0, -0x1

    goto/16 :goto_1
.end method
