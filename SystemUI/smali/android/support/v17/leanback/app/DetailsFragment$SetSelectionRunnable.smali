.class Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelectionRunnable"
.end annotation


# instance fields
.field mPosition:I

.field mSmooth:Z

.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->mSmooth:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->mPosition:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->mSmooth:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsFragment;->setSelectedPosition(IZ)V

    return-void
.end method
