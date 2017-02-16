.class Landroid/widget/ScrollView$12;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ScrollView;

    .prologue
    .line 3569
    iput-object p1, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3588
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3580
    :try_start_0
    iget-object v1, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/widget/ScrollView;->-set1(Landroid/widget/ScrollView;I)I

    .line 3581
    iget-object v1, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/ScrollView;->-wrap5(Landroid/widget/ScrollView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3578
    :goto_0
    return-void

    .line 3582
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3586
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3573
    :try_start_0
    iget-object v1, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/ScrollView;->-set1(Landroid/widget/ScrollView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3571
    :goto_0
    return-void

    .line 3574
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
