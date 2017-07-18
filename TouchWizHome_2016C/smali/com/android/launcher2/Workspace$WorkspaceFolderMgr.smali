.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;Lcom/android/launcher2/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    iput-boolean p3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    return-void
.end method

.method private cleanupListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

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

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose(Z)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v4, "Launcher.Workspace"

    const-string v5, "onFolderClose"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v4

    const/16 v5, 0x96

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->cleanupListener()V

    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iget v1, v4, Lcom/android/launcher2/Folder;->mCloseDuration:I

    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$2000(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060017

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher2/Workspace;->access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto/16 :goto_1
.end method

.method public onFolderOpen()V
    .locals 14

    const/high16 v13, 0x3fc00000    # 1.5f

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_0
    const-string v9, "Launcher.Workspace"

    const-string v10, "home fragment was null trying to open folder?"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v9, "Launcher.Workspace"

    const-string v10, "darken layer was null trying to open folder?"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0009

    invoke-virtual {v9, v10, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    iget-boolean v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v9

    iget v5, v9, Lcom/android/launcher2/Folder;->mExpandDuration:I

    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v9

    iget v0, v9, Lcom/android/launcher2/Folder;->mAlphaAnimDuration:I

    :goto_2
    move v2, v0

    const/4 v9, 0x2

    new-array v6, v9, [I

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9, v6}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v8

    aget v9, v6, v12

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    aget v9, v6, v11

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v10}, Lcom/android/launcher2/Workspace;->access$2100(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v10}, Lcom/android/launcher2/Workspace;->access$2100(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    int-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$3;

    invoke-direct {v10, p0, v8, v1}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$3;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;Landroid/view/View;F)V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    const/4 v4, 0x0

    sget-boolean v9, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f06000c

    invoke-static {v9, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    :goto_4
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    int-to-long v10, v2

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v12}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    sget-object v9, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v10, 0x7f090057

    invoke-virtual {v9, v10}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$4;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$4;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V

    const-wide/16 v10, 0x5dc

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->closeQuickoptionsPopup()V

    goto/16 :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c003e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto/16 :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c006f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f06000b

    invoke-static {v9, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_4
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->cleanupListener()V

    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
