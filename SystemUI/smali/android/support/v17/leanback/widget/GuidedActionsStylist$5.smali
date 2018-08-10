.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0, v2, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_0
.end method
