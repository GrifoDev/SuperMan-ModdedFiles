.class Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemHorizontalAbsListView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;->this$1:Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;->this$1:Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->start(I)V

    return-void
.end method
