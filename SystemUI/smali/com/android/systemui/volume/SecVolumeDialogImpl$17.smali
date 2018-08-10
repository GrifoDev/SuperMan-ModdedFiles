.class Lcom/android/systemui/volume/SecVolumeDialogImpl$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set1(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set7(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get38(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v6

    if-ne v2, v6, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6, v2, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap1(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    move-result v4

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v6

    :goto_3
    invoke-static {v8, v6}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get13(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v6, -0x2

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set1(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set7(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get3(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$17;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get4(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
