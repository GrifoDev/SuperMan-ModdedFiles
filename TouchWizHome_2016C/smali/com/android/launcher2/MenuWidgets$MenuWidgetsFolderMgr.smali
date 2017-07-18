.class Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuWidgetsFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$1;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->setWidgetViewView(Lcom/android/launcher2/WidgetFolderView;)V

    iput-boolean p3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mAnimateOpen:Z

    return-void
.end method

.method static synthetic access$2800(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolderView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    return-object v0
.end method

.method private cleanupListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimtion()V
    .locals 0

    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2, v8}, Lcom/android/launcher2/MenuWidgets;->access$2402(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolder;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v7}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v2, v7}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->requestFocus()Z

    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public onFolderOpen()V
    .locals 12

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0009

    invoke-virtual {v6, v7, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    iget-boolean v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mAnimateOpen:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    new-array v3, v6, [I

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/WidgetFolderView;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    aget v7, v3, v10

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->setPivotX(F)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    aget v7, v3, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/launcher2/WidgetFolderView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v6

    iget v2, v6, Lcom/android/launcher2/WidgetFolder;->mTotExpandDuration:I

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v6

    iget v0, v6, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v7}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v7}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$3;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v7}, Lcom/android/launcher2/MenuWidgets;->access$2900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6, v10}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;Z)V

    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v7, 0x7f090057

    invoke-virtual {v6, v7}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$4;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    const-wide/16 v8, 0x5dc

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/launcher2/MenuView;->setAlpha(F)V

    goto :goto_2
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public setWidgetViewView(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mWidgeticon:Lcom/android/launcher2/WidgetFolderView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
