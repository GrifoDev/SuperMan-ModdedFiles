.class Lcom/android/launcher2/HomeScreenOptionMenu$16;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;->startVisibleAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->val$visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->val$visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$16;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
