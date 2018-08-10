.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

.field final synthetic val$vh:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;->val$vh:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;->val$vh:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    :cond_0
    return-void
.end method
