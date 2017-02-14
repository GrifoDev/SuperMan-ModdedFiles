.class Lcom/android/launcher2/FolderItemMovePanel$Scroller;
.super Ljava/lang/Object;
.source "FolderItemMovePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderItemMovePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scroller"
.end annotation


# static fields
.field public static final DIR_LEFT:I = -0x1

.field public static final DIR_RIGHT:I = 0x1

.field public static final SCROLL_DELAY:I = 0x7

.field public static final SCROLL_DISTANCE:I = 0x1e


# instance fields
.field private mDir:I

.field private mInQueue:Z

.field final synthetic this$0:Lcom/android/launcher2/FolderItemMovePanel;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/FolderItemMovePanel;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    iput-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/FolderItemMovePanel;Lcom/android/launcher2/FolderItemMovePanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;-><init>(Lcom/android/launcher2/FolderItemMovePanel;)V

    return-void
.end method

.method private canScrollLeft()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/android/launcher2/FolderItemMovePanel;->access$100(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canScrollRight()Z
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderItemMovePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/launcher2/FolderItemMovePanel;->access$100(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/launcher2/FolderItemMovePanel;->access$200(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v3}, Lcom/android/launcher2/FolderItemMovePanel;->access$100(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasQueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    iget v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/android/launcher2/FolderItemMovePanel;->access$100(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/launcher2/FolderItemMovePanel;->access$200(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/launcher2/FolderItemMovePanel;->access$200(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mFolderListView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/launcher2/FolderItemMovePanel;->access$200(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    # getter for: Lcom/android/launcher2/FolderItemMovePanel;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/android/launcher2/FolderItemMovePanel;->access$100(Lcom/android/launcher2/FolderItemMovePanel;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    mul-int/lit8 v3, v3, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    iget v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->canScrollLeft()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->canScrollRight()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iput-boolean v5, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    iget-object v2, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    const-wide/16 v4, 0x7

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/launcher2/FolderItemMovePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public scrollLeft()V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->canScrollLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    iget-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/FolderItemMovePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->canScrollRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mDir:I

    iget-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/FolderItemMovePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public unQueue()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderItemMovePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderItemMovePanel$Scroller;->mInQueue:Z

    :cond_0
    return-void
.end method
