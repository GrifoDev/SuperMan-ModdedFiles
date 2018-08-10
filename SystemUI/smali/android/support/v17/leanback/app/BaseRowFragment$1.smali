.class Landroid/support/v17/leanback/app/BaseRowFragment$1;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "BaseRowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BaseRowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseRowFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    invoke-static {v0}, Landroid/support/v17/leanback/app/BaseRowFragment;->-get0(Landroid/support/v17/leanback/app/BaseRowFragment;)Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    iput p3, v0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseRowFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/BaseRowFragment;->onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    :cond_0
    return-void
.end method
