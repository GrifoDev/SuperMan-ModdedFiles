.class Lcom/android/launcher2/QuickViewWorkspace$2;
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

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$000(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$000(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$000(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$000(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
