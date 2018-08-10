.class Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v4, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v5, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v8, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v8, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method
