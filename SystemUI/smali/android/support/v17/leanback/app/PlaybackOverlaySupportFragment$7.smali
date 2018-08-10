.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$7;
.super Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;
.source "PlaybackOverlaySupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->loadControlRowAnimator()V
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method getViews(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->getControlRowView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
