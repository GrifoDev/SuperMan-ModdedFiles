.class Landroid/widget/PopupWindow$4;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;

.field final synthetic val$contentHolder:Landroid/view/ViewGroup;

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$decorView:Landroid/widget/PopupWindow$PopupDecorView;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupWindow;
    .param p2, "val$decorView"    # Landroid/widget/PopupWindow$PopupDecorView;
    .param p3, "val$contentHolder"    # Landroid/view/ViewGroup;
    .param p4, "val$contentView"    # Landroid/view/View;

    .prologue
    .line 1954
    iput-object p1, p0, Landroid/widget/PopupWindow$4;->this$0:Landroid/widget/PopupWindow;

    iput-object p2, p0, Landroid/widget/PopupWindow$4;->val$decorView:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p3, p0, Landroid/widget/PopupWindow$4;->val$contentHolder:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/widget/PopupWindow$4;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1957
    iget-object v0, p0, Landroid/widget/PopupWindow$4;->this$0:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/PopupWindow$4;->val$decorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v2, p0, Landroid/widget/PopupWindow$4;->val$contentHolder:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/PopupWindow$4;->val$contentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->-wrap2(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1956
    return-void
.end method
