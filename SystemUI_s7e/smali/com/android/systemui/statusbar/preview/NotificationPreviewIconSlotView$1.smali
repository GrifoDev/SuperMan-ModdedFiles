.class Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;
.super Ljava/lang/Object;
.source "NotificationPreviewIconSlotView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->performIconScaleAnim(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

.field final synthetic val$icon:Landroid/view/View;

.field final synthetic val$upScale:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->val$upScale:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->val$icon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->val$upScale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->val$icon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->val$upScale:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;->val$icon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method
