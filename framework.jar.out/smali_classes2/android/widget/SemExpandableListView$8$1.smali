.class Landroid/widget/SemExpandableListView$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView$8;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemExpandableListView$8;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView$8;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/SemExpandableListView$8;
    .param p2, "val$animationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1607
    iput-object p1, p0, Landroid/widget/SemExpandableListView$8$1;->this$1:Landroid/widget/SemExpandableListView$8;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$8$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1616
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get4()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "expand animation finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v0, p0, Landroid/widget/SemExpandableListView$8$1;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1618
    iget-object v0, p0, Landroid/widget/SemExpandableListView$8$1;->this$1:Landroid/widget/SemExpandableListView$8;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-wrap9(Landroid/widget/SemExpandableListView;)V

    .line 1615
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1611
    iget-object v0, p0, Landroid/widget/SemExpandableListView$8$1;->this$1:Landroid/widget/SemExpandableListView$8;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-set0(Landroid/widget/SemExpandableListView;I)I

    .line 1610
    return-void
.end method
