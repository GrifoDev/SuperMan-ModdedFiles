.class Landroid/widget/SemExpandableListView$5;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$groupPos:I

.field final synthetic val$shiftedGroupPosition:I


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;II)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    iput p2, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    iput p3, p0, Landroid/widget/SemExpandableListView$5;->val$shiftedGroupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get35(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get35(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    iget v1, p0, Landroid/widget/SemExpandableListView$5;->val$shiftedGroupPosition:I

    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-get6(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    iget v3, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SemExpandableListView$5;->val$shiftedGroupPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->smoothScrollToPosition(II)V

    return-void
.end method
