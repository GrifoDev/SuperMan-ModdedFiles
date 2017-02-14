.class Lcom/android/launcher2/LauncherAppWidgetHostView$2;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherAppWidgetHostView;->startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field final synthetic val$origView:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$prvView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherAppWidgetHostView;Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$2;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$2;->val$origView:Landroid/appwidget/AppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$2;->val$prvView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$2;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$2;->val$origView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$2;->val$prvView:Landroid/widget/FrameLayout;

    # invokes: Lcom/android/launcher2/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$600(Lcom/android/launcher2/LauncherAppWidgetHostView;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
