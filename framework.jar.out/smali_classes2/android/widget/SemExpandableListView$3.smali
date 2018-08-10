.class Landroid/widget/SemExpandableListView$3;
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


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$3;->this$0:Landroid/widget/SemExpandableListView;

    iput p2, p0, Landroid/widget/SemExpandableListView$3;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView$3;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView$3;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$3;->val$groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return-void
.end method
