.class Lcom/android/launcher2/QuickViewWorkspace$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Workspace;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$3;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {v2}, Lcom/android/launcher2/QuickViewWorkspace;->access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher2/Workspace;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
