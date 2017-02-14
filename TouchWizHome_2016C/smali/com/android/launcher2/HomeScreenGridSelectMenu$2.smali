.class Lcom/android/launcher2/HomeScreenGridSelectMenu$2;
.super Ljava/lang/Object;
.source "HomeScreenGridSelectMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenGridSelectMenu;->animationOutGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$2;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$2;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$2;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setVisibility(I)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    return-void
.end method
