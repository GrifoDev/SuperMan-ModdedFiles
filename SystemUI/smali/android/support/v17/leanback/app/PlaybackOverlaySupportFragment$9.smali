.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$9;
.super Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;
.source "PlaybackOverlaySupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->loadOtherRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$9;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method getViews(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$9;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$9;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$9;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
