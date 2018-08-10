.class Landroid/widget/MultiSelectPopupWindow$HandleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MultiSelectPopupWindow$HandleView;->resetHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$4;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$4;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->-get0(Landroid/widget/MultiSelectPopupWindow$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$4;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->-set0(Landroid/widget/MultiSelectPopupWindow$HandleView;Z)Z

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$4;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->requestLayout()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$4;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->invalidate()V

    return-void
.end method
