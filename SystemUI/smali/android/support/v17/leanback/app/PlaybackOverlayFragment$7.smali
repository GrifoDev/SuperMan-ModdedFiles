.class Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;
.super Landroid/support/v17/leanback/app/PlaybackOverlayFragment$AnimatorListener;
.source "PlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadControlRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$AnimatorListener;-><init>()V

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

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getControlRowView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
