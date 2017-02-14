.class Lcom/android/launcher2/PagedViewWidget$1;
.super Ljava/lang/Object;
.source "PagedViewWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedViewWidget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget$1;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->getArrowBtn()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$1;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->getArrowBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
