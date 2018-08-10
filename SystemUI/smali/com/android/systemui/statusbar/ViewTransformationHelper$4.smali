.class Lcom/android/systemui/statusbar/ViewTransformationHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewTransformationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->-wrap0(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    goto :goto_0
.end method
