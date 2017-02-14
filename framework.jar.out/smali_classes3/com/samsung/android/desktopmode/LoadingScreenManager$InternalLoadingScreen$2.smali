.class Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;
.super Ljava/lang/Object;
.source "LoadingScreenManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;->this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;->this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v0, v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->-get0(Lcom/samsung/android/desktopmode/LoadingScreenManager;)Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;->this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v0, v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->-get1(Lcom/samsung/android/desktopmode/LoadingScreenManager;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;->this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v0, v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->-get0(Lcom/samsung/android/desktopmode/LoadingScreenManager;)Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;->onAnimationEnd(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;->this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v0, v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->-get1(Lcom/samsung/android/desktopmode/LoadingScreenManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;->this$1:Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;

    iget-object v0, v0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->-get0(Lcom/samsung/android/desktopmode/LoadingScreenManager;)Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;->onAnimationEnd(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
