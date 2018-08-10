.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasTextEditable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->handleCheckedActions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->infoOnly()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_0
.end method
