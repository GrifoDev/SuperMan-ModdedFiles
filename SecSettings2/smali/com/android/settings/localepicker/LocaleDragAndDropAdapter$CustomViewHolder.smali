.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mLocaleDragCell:Lcom/android/settings/localepicker/LocaleDragCell;

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragCell;->getDragHandle()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getLocaleDragCell()Lcom/android/settings/localepicker/LocaleDragCell;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get1(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
