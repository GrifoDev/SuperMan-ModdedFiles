.class Landroid/support/v17/leanback/widget/BaseGridView$2;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseGridView;

.field final synthetic val$position:I

.field final synthetic val$task:Landroid/support/v17/leanback/widget/ViewHolderTask;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView$2;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseGridView$2;->val$position:I

    iput-object p3, p0, Landroid/support/v17/leanback/widget/BaseGridView$2;->val$task:Landroid/support/v17/leanback/widget/ViewHolderTask;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$2;->val$position:I

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$2;->this$0:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BaseGridView;->removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView$2;->val$task:Landroid/support/v17/leanback/widget/ViewHolderTask;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/ViewHolderTask;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
