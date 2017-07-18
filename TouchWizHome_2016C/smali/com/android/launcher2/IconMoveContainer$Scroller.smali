.class Lcom/android/launcher2/IconMoveContainer$Scroller;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconMoveContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scroller"
.end annotation


# static fields
.field public static final DIR_LEFT:I = -0x1

.field public static final DIR_RIGHT:I = 0x1


# instance fields
.field public SCROLL_DELAY:I

.field public SCROLL_DISTANCE:I

.field private mDir:I

.field private mInQueue:Z

.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/IconMoveContainer;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DELAY:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DISTANCE:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/IconMoveContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/IconMoveContainer$Scroller;-><init>(Lcom/android/launcher2/IconMoveContainer;)V

    return-void
.end method


# virtual methods
.method public canScrollLeft()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

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

.method public canScrollRight()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v1}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMoveApps;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    return v0
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DISTANCE:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer$Scroller;->canScrollLeft()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer$Scroller;->canScrollRight()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iget v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public scrollLeft()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer$Scroller;->canScrollLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    iget-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iget v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer$Scroller;->canScrollRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mDir:I

    iget-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iget v1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setScrollSensibility(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DELAY:I

    iput p2, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->SCROLL_DISTANCE:I

    return-void
.end method

.method public unQueue()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/IconMoveContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer$Scroller;->mInQueue:Z

    :cond_0
    return-void
.end method
