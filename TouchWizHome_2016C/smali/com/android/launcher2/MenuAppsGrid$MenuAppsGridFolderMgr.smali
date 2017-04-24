.class Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuAppsGridFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mClosingWithAppsExit:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mClosingWithAppsExit:Z

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    iput-boolean p3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mAnimateOpen:Z

    return-void
.end method

.method private cleanupListener()V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancelAnimtion()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public isCloseFolderWithAppsExit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mClosingWithAppsExit:Z

    return v0
.end method

.method public onFolderClose(Z)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->cleanupListener()V

    invoke-static {}, Lcom/android/launcher2/utils/WallpaperUtils;->isCurrentLiveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v4

    const/16 v5, 0x96

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iget v1, v4, Lcom/android/launcher2/Folder;->mCloseDuration:I

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v4

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->setMenuButtonsVisibility(Z)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_3

    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mClosingWithAppsExit:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v4, v9}, Lcom/android/launcher2/MenuAppsGrid;->access$102(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Folder;->removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f080049

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSineInOut33:Landroid/view/animation/Interpolator;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSineInOut80:Landroid/view/animation/Interpolator;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2
.end method

.method public onFolderOpen()V
    .locals 14

    const/high16 v13, 0x3fc00000    # 1.5f

    const/4 v10, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0009

    invoke-virtual {v8, v9, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v8

    const v9, 0x1020011

    invoke-virtual {v8, v9}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mAnimateOpen:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v8

    iget v3, v8, Lcom/android/launcher2/Folder;->mExpandDuration:I

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v8

    iget v0, v8, Lcom/android/launcher2/Folder;->mAlphaAnimDuration:I

    :goto_1
    const/4 v8, 0x2

    new-array v4, v8, [I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/launcher2/Folder;->getLocation([I)V

    :cond_0
    aget v8, v4, v12

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    aget v8, v4, v10

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSineInOut90:Landroid/view/animation/Interpolator;
    invoke-static {v9}, Lcom/android/launcher2/MenuAppsGrid;->access$500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mSineInOut90:Landroid/view/animation/Interpolator;
    invoke-static {v9}, Lcom/android/launcher2/MenuAppsGrid;->access$500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-long v10, v3

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;

    invoke-direct {v9, p0, v7, v2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;Landroid/view/View;F)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v9

    invoke-virtual {v8, v1, v9, v12}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/MenuView;->mMenuContainer:Landroid/view/View;

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v9}, Lcom/android/launcher2/MenuAppsGrid;->access$600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v8, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v9, 0x7f080057

    invoke-virtual {v8, v9}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    if-nez v6, :cond_1

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$3;

    invoke-direct {v8, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$3;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;)V

    const-wide/16 v10, 0x5dc

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->closeQuickoptionsPopup()V

    :cond_2
    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    const-string v8, "Launcher.MenuAppsGrid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onFolderOpen, bgAlpha = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v8}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/launcher2/MenuView;->setMenuButtonsVisibility(Z)V

    goto/16 :goto_2
.end method

.method public setCloseFolderWithAppsExit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mClosingWithAppsExit:Z

    return-void
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->cleanupListener()V

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    goto :goto_0
.end method
