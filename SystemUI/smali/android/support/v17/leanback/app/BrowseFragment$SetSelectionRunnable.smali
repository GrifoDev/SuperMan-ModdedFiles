.class Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelectionRunnable"
.end annotation


# instance fields
.field private mPosition:I

.field private mSmooth:Z

.field private mType:I

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mPosition:I

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mSmooth:Z

    return-void
.end method


# virtual methods
.method post(IIZ)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mType:I

    if-lt p2, v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mPosition:I

    iput p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mType:I

    iput-boolean p3, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mSmooth:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mPosition:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->mSmooth:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->setSelection(IZ)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseFragment$SetSelectionRunnable;->reset()V

    return-void
.end method
