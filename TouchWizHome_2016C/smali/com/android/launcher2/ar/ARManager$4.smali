.class Lcom/android/launcher2/ar/ARManager$4;
.super Ljava/lang/Object;
.source "ARManager.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ar/ARManager;->onConfigurationChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ar/ARManager;

.field final synthetic val$rotationStartDegree:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/ar/ARManager;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$4;->this$0:Lcom/android/launcher2/ar/ARManager;

    iput p2, p0, Lcom/android/launcher2/ar/ARManager$4;->val$rotationStartDegree:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTransitionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/launcher2/ar/ARHelper;->setIsAnimationRunning(Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const v2, 0x7f11008a

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTransitionStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher2/ar/ARHelper;->setIsAnimationRunning(Z)V

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager$4;->this$0:Lcom/android/launcher2/ar/ARManager;

    iget v2, p0, Lcom/android/launcher2/ar/ARManager$4;->val$rotationStartDegree:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/launcher2/ar/ARManager;->access$800(Lcom/android/launcher2/ar/ARManager;I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const v2, 0x7f11008a

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
