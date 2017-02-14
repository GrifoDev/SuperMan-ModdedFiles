.class Lcom/android/launcher2/Folder$FolderVertScroller;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderVertScroller"
.end annotation


# static fields
.field public static final DIR_DOWN:I = 0x1

.field public static final DIR_UP:I = -0x1

.field public static final SCROLL_DELAY:I = 0xa


# instance fields
.field private mDir:I

.field private mInQueue:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    iput v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iput-boolean v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;)V

    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeight()I

    move-result v1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canScrollUp()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    iget v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollUp()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public scrollDown()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    :cond_0
    iput v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iget-boolean v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public scrollUp()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iget-boolean v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/launcher2/Folder;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public setTargetView(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method public unQueue()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Folder;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    :cond_0
    return-void
.end method
