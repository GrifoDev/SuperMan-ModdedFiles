.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "NavBarTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method private move(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-le p1, p2, :cond_1

    move v0, p2

    :goto_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-le p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {v3, v3}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->makeMovementFlags(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, v3}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->move(IILjava/util/List;)V

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get2(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->move(IILjava/util/List;)V

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v2, v2, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v2}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->notifyItemMoved(II)V

    const/4 v2, 0x1

    return v2
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
