.class Landroid/app/FragmentManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentManagerImpl$2;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
