.class Lcom/android/launcher2/HomeScreenOptionMenu$13;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;->animateOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$13;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$13;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$13;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$13;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$13;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
