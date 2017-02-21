.class Landroid/widget/AbsSeekBar$1;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsSeekBar;


# direct methods
.method constructor <init>(Landroid/widget/AbsSeekBar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroid/widget/AbsSeekBar;->-set0(Landroid/widget/AbsSeekBar;I)I

    iget-object v0, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    iget-object v1, p0, Landroid/widget/AbsSeekBar$1;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v1}, Landroid/widget/AbsSeekBar;->-get0(Landroid/widget/AbsSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->onSlidingRefresh(I)V

    return-void
.end method
