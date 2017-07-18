.class Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;
.super Ljava/lang/Object;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetFolderIconAnim"
.end annotation


# instance fields
.field private mFolderIconAnimView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/launcher2/WidgetFolder;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/WidgetFolder;Lcom/android/launcher2/WidgetFolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->animCompleted()V

    return-void
.end method

.method private animCompleted()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v3}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v3}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v3}, Lcom/android/launcher2/WidgetFolder;->access$2900(Lcom/android/launcher2/WidgetFolder;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->setCompundDrawableVisibility(Landroid/view/View;Z)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private setCompundDrawableVisibility(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public adjustSizeAndPosition(Lcom/android/launcher2/HomeView$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public close(Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$2900(Lcom/android/launcher2/WidgetFolder;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    const/4 v14, 0x0

    aget v7, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    const/4 v14, 0x1

    aget v8, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    const/4 v14, 0x0

    aget v9, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    const/4 v14, 0x1

    aget v10, v13, v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3000(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$3100(Lcom/android/launcher2/WidgetFolder;)I

    move-result v14

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$3100(Lcom/android/launcher2/WidgetFolder;)I

    move-result v14

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v13}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/WidgetFolderPagedView;->getWidth()I

    move-result v13

    iput v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/WidgetFolderPagedView;->getHeight()I

    move-result v13

    iput v13, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/WidgetFolderPagedView;->getWidth()I

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    const/4 v14, 0x0

    aget v7, v13, v14

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/WidgetFolderPagedView;->getHeight()I

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    const/4 v14, 0x1

    aget v8, v13, v14

    :goto_2
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/MenuWidgets;->getBottom()I

    move-result v14

    sub-int/2addr v13, v14

    const v14, 0x7f0a02ef

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v4, v13, 0x2

    const v13, 0x7f0a0306

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v13, 0x7f0a0307

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3100(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    add-int/2addr v9, v2

    sub-int/2addr v10, v3

    :cond_2
    :goto_3
    instance-of v13, v11, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v13, :cond_7

    move-object v13, v11

    check-cast v13, Lcom/android/launcher2/WidgetFolderView;

    move-object v12, v13

    :goto_4
    invoke-virtual {v12}, Lcom/android/launcher2/WidgetFolderView;->getWidth()I

    move-result v13

    if-lez v13, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetFolderView;->getHeight()I

    move-result v13

    if-gtz v13, :cond_8

    :cond_3
    invoke-static {}, Lcom/android/launcher2/WidgetFolder;->access$400()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "widgetfolderView.getWidth() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetFolderView;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,widgetfolderView.getHeight() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetFolderView;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,getFolderView().getWidth() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v15}, Lcom/android/launcher2/WidgetFolder;->access$2600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/WidgetFolderView;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,getFolderView().getHeight() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v15}, Lcom/android/launcher2/WidgetFolder;->access$2600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/WidgetFolderView;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,widgetfolderName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetFolderView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->animCompleted()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/WidgetFolderPagedView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v7, v13, v14

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/WidgetFolderPagedView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v8, v13, v14

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$3100(Lcom/android/launcher2/WidgetFolder;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    sub-int/2addr v9, v2

    add-int/2addr v10, v3

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v13}, Lcom/android/launcher2/WidgetFolder;->access$2600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderView;

    move-result-object v12

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-static {v12}, Lcom/android/launcher2/WidgetFolder;->createWidgetFolderBitmap(Lcom/android/launcher2/WidgetFolderView;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    const/4 v14, 0x2

    sget-object v15, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v14, v15}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    int-to-float v14, v9

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    add-int v14, v10, v4

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    iget-object v14, v14, Lcom/android/launcher2/WidgetFolder;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->setCompundDrawableVisibility(Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v14}, Lcom/android/launcher2/WidgetFolder;->access$2800(Lcom/android/launcher2/WidgetFolder;)Landroid/view/animation/Interpolator;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    div-int/lit8 v14, p2, 0x5

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    mul-int/lit8 v14, p2, 0x4

    div-int/lit8 v14, v14, 0x5

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$3;-><init>(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method

.method public open()V
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

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

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    iget-object v1, v1, Lcom/android/launcher2/WidgetFolder;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    iget v1, v1, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$1;-><init>(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2800(Lcom/android/launcher2/WidgetFolder;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    iget v1, v1, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$2;-><init>(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public openPrepare(Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v5}, Lcom/android/launcher2/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v4}, Lcom/android/launcher2/WidgetFolder;->access$2600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderView;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/WidgetFolder;->createWidgetFolderBitmap(Lcom/android/launcher2/WidgetFolderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-static {v4}, Lcom/android/launcher2/WidgetFolder;->access$2700(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/HomeView$LayoutParams;

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

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->mFolderIconAnimView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
