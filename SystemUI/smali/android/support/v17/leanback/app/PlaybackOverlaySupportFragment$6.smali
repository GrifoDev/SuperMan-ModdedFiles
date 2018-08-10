.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$6;
.super Ljava/lang/Object;
.source "PlaybackOverlaySupportFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->loadBgAnimator()V
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$6;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$6;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->setBgAlpha(I)V

    return-void
.end method
