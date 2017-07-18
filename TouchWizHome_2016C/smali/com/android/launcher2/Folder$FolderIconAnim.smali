.class Lcom/android/launcher2/Folder$FolderIconAnim;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderIconAnim"
.end annotation


# instance fields
.field private mFolderIconAnimView:Landroid/widget/ImageView;

.field private mFolderInitHeight:I

.field private mFolderInitLocationX:I

.field private mFolderInitLocationY:I

.field private mFolderInitWidth:I

.field private mInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder$FolderIconAnim;-><init>(Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Folder$FolderIconAnim;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder$FolderIconAnim;->setCompundDrawableVisibility(Lcom/android/launcher2/FolderIconView;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/launcher2/Folder$FolderIconAnim;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder$FolderIconAnim;->animCompleted(Z)V

    return-void
.end method

.method private animCompleted(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Folder$FolderIconAnim;->setCompundDrawableVisibility(Lcom/android/launcher2/FolderIconView;Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderIconView;->setDrawPlate(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2, v4}, Lcom/android/launcher2/Folder;->access$1502(Lcom/android/launcher2/Folder;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppIconView;->startUninstallFadeAnim(F)V

    :cond_2
    return-void
.end method

.method private animateFolderIconThumbnail(Lcom/android/launcher2/Folder$FolderAnimationInfo;)V
    .locals 12

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget-object v8, v8, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderContent;->getPagedView()Lcom/android/launcher2/FolderPagedView;

    move-result-object v1

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    const/4 v9, 0x0

    aget v4, v8, v9

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    const/4 v9, 0x1

    aget v5, v8, v9

    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$2600(Lcom/android/launcher2/Folder;)I

    move-result v8

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v8, v9

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$2900(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8, p1}, Lcom/android/launcher2/Folder;->access$2902(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$FolderAnimationInfo;)Lcom/android/launcher2/Folder$FolderAnimationInfo;

    :cond_0
    iget-object v8, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v6, v8

    iget-object v8, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v7, v8

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$2900(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v8, v8

    cmpl-float v8, v8, v6

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$2900(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$2900(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v6, v8

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$2900(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v7, v8

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$3000(Lcom/android/launcher2/Folder;)I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$3100(Lcom/android/launcher2/Folder;)I

    move-result v9

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$3200(Lcom/android/launcher2/Folder;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$3100(Lcom/android/launcher2/Folder;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02f9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    neg-int v0, v8

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getIconDestination()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    neg-int v0, v8

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/launcher2/Folder;->access$3202(Lcom/android/launcher2/Folder;I)I

    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    add-float v9, v7, v2

    int-to-float v10, v0

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v9, v9, Lcom/android/launcher2/Folder;->mCloseDuration:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$3300(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v9, v9, Lcom/android/launcher2/Folder;->mCloseDuration:I

    div-int/lit8 v9, v9, 0x5

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v9, v9, Lcom/android/launcher2/Folder;->mCloseDuration:I

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x5

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$3400(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getIconSize()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getIconSize()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$3200(Lcom/android/launcher2/Folder;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v8}, Lcom/android/launcher2/Folder;->access$3100(Lcom/android/launcher2/Folder;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02f9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getIconDestination()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_2
.end method

.method private hideFolderIconText(I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Folder$FolderIconAnim;->setCompundDrawableVisibility(Lcom/android/launcher2/FolderIconView;Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setDrawPlate(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->hideBadge()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hideFolderIconView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIconView;->setDrawPlate(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIconView;->setDrawText(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->hideBadge()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Folder$FolderIconAnim;->setCompundDrawableVisibility(Lcom/android/launcher2/FolderIconView;Z)V

    :cond_0
    return-void
.end method

.method private setCompundDrawableVisibility(Lcom/android/launcher2/FolderIconView;Z)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const-string v3, "Launcher.Folder"

    const-string v4, "CompoundDrawables not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private showFolderIconText(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/Folder$FolderIconAnim$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Folder$FolderIconAnim$3;-><init>(Lcom/android/launcher2/Folder$FolderIconAnim;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSizeAndPosition(Lcom/android/launcher2/HomeView$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public close(Lcom/android/launcher2/Folder$FolderAnimationInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/Folder$FolderIconAnim;->hideFolderIconView()V

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder$FolderIconAnim;->animateFolderIconThumbnail(Lcom/android/launcher2/Folder$FolderAnimationInfo;)V

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v1, v1, Lcom/android/launcher2/Folder;->mCloseDuration:I

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v2, v2, Lcom/android/launcher2/Folder;->mAlphaDuration:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v1, v1, Lcom/android/launcher2/Folder;->mAlphaDuration:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Folder$FolderIconAnim;->showFolderIconText(II)V

    return-void
.end method

.method public closeWithoutAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder$FolderIconAnim;->animCompleted(Z)V

    return-void
.end method

.method public open()V
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v0, v0, Lcom/android/launcher2/Folder;->mAlphaDuration:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder$FolderIconAnim;->hideFolderIconText(I)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$2800(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v1, v1, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$FolderIconAnim$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$FolderIconAnim$1;-><init>(Lcom/android/launcher2/Folder$FolderIconAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget v1, v1, Lcom/android/launcher2/Folder;->mAlphaDuration:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$2800(Lcom/android/launcher2/Folder;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$FolderIconAnim$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$FolderIconAnim$2;-><init>(Lcom/android/launcher2/Folder$FolderIconAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public openPrepare(Lcom/android/launcher2/Folder$FolderAnimationInfo;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v1, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, v1, Lcom/android/launcher2/HomeView$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v1, Lcom/android/launcher2/HomeView$LayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v1, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mInfo:Lcom/android/launcher2/Folder$FolderAnimationInfo;

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$2500(Lcom/android/launcher2/Folder;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderInitWidth:I

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v4}, Lcom/android/launcher2/Folder;->access$2600(Lcom/android/launcher2/Folder;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderInitHeight:I

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v4, v6

    iput v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderInitLocationX:I

    iget-object v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v4, v7

    iput v4, p0, Lcom/android/launcher2/Folder$FolderIconAnim;->mFolderInitLocationY:I

    return-void
.end method
