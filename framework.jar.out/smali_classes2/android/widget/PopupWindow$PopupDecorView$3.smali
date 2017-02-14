.class Landroid/widget/PopupWindow$PopupDecorView$3;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$anchorRoot:Landroid/view/View;

.field final synthetic val$listener:Landroid/transition/Transition$TransitionListener;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$listener:Landroid/transition/Transition$TransitionListener;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$anchorRoot:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/widget/PopupWindow$PopupDecorView;->-get0(Landroid/widget/PopupWindow$PopupDecorView;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->val$listener:Landroid/transition/Transition$TransitionListener;

    invoke-interface {v0, p1}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->-set0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition$TransitionListenerAdapter;)Landroid/transition/Transition$TransitionListenerAdapter;

    return-void
.end method
