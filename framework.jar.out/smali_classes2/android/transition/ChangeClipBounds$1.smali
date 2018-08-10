.class Landroid/transition/ChangeClipBounds$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeClipBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeClipBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/ChangeClipBounds;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeClipBounds;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/transition/ChangeClipBounds$1;->this$0:Landroid/transition/ChangeClipBounds;

    iput-object p2, p0, Landroid/transition/ChangeClipBounds$1;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/transition/ChangeClipBounds$1;->val$endView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
