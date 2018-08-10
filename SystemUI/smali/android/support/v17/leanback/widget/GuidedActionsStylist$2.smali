.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ViewHolderTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$guidedActionAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# virtual methods
.method public run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;->val$guidedActionAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;->val$guidedActionAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    return-void
.end method
