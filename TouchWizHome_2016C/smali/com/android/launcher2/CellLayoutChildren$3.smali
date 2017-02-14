.class Lcom/android/launcher2/CellLayoutChildren$3;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutChildren;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutChildren;

.field final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field final synthetic val$gridChangeAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutChildren;Lcom/android/launcher2/CellLayout;Landroid/view/animation/AnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    iput-object p2, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$cl:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$gridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$cl:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$cl:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    new-instance v2, Lcom/android/launcher2/CellLayoutChildren$3$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/CellLayoutChildren$3$1;-><init>(Lcom/android/launcher2/CellLayoutChildren$3;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->this$0:Lcom/android/launcher2/CellLayoutChildren;

    new-instance v2, Lcom/android/launcher2/CellLayoutChildren$3$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/CellLayoutChildren$3$2;-><init>(Lcom/android/launcher2/CellLayoutChildren$3;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$gridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$gridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren$3;->val$gridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->start()V

    goto :goto_0
.end method
