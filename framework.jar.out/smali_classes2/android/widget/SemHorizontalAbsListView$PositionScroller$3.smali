.class Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView$PositionScroller;->startWithOffset(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemHorizontalAbsListView$PositionScroller;

.field final synthetic val$duration:I

.field final synthetic val$position:I

.field final synthetic val$postOffset:I


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;III)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/SemHorizontalAbsListView$PositionScroller;
    .param p2, "val$position"    # I
    .param p3, "val$postOffset"    # I
    .param p4, "val$duration"    # I

    .prologue
    .line 10165
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->this$1:Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->val$position:I

    iput p3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->val$postOffset:I

    iput p4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 10167
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->this$1:Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->val$position:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->val$postOffset:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;->val$duration:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->startWithOffset(III)V

    .line 10166
    return-void
.end method
