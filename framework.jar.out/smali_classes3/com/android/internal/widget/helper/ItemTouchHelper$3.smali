.class Lcom/android/internal/widget/helper/ItemTouchHelper$3;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 10

    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    goto :goto_0
.end method
