.class Landroid/widget/Editor$HandleView$5;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getRestorePositionAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView$5;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "y"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView$5;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView$5;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->invalidate()V

    iget-object v2, p0, Landroid/widget/Editor$HandleView$5;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->-get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method
