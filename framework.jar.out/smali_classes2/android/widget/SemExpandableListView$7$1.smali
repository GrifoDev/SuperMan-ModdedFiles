.class Landroid/widget/SemExpandableListView$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemExpandableListView$7;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView$7;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/SemExpandableListView$7;
    .param p2, "val$animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1366
    iput-object p1, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$7$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1375
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get4()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "expand animation finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Landroid/widget/SemExpandableListView$7$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1377
    iget-object v0, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    .line 1374
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1370
    iget-object v0, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-set0(Landroid/widget/SemExpandableListView;I)I

    .line 1369
    return-void
.end method
