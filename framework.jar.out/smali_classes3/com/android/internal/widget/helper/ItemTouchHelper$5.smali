.class Lcom/android/internal/widget/helper/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_0

    return p2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$5;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    return v0

    :cond_2
    if-ge p2, v0, :cond_3

    :goto_0
    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
