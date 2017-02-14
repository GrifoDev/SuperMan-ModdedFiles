.class public Lcom/android/launcher2/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "DragState"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private mAllowMoveAfterDrop:Z

.field private mAnimateView:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mCacheDragView:Landroid/view/View;

.field private mDeleted:Z

.field final mDragOrigin:Lcom/android/launcher2/DragOrigin;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field final mItem:Lcom/android/launcher2/BaseItem;

.field mOriginalCell:I

.field mOriginalScreen:I

.field private mReceiver:Lcom/android/launcher2/DragReceivable;

.field mRevertDrag:Z

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

.field mUnderdragView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ILcom/android/launcher2/Launcher;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mAllowMoveAfterDrop:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iput-object p3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DragState;->initItemInfo(Landroid/content/Intent;I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DragState for DND : mItem :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mAllowMoveAfterDrop:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    iput-object v6, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iput-object p2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v3, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v3, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v3, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_0

    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, v1, v5

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    aput v3, v1, v7

    new-instance v3, Lcom/android/launcher2/WidgetSizes;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    aget v4, v1, v5

    aget v5, v1, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/WidgetSizes;->setMinSpan(II)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingWidget;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {v3}, Lcom/android/launcher2/HomePendingWidget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/HomePendingWidget;->setResizeSpans(II)V

    :cond_4
    iget v3, v2, Lcom/android/launcher2/HomePendingWidget;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DragState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DragState;)Lcom/android/launcher2/DragReceivable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    return-object v0
.end method

.method private animateDrop()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v0

    :cond_3
    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    check-cast v3, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v0

    goto :goto_1
.end method

.method private animateWidgetDrop(Lcom/android/launcher2/CellLayout;)V
    .locals 15

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/launcher2/HomeView;->setWidgetAnimState(Z)V

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getCurrentDragOutline()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v13, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    check-cast v13, Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher2/DragState$5;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DragState$5;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v10}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {v2}, Lcom/android/launcher2/HomePendingWidget;->getHomeWidgetItem()Lcom/android/launcher2/HomeWidgetItem;

    move-result-object v12

    if-nez v12, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/android/launcher2/HomeView;->WidgetAnimEndCallBack:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateWidgeteDrop(ILjava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/AnimationLayer$Anim;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iput-object v14, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v14, v2, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->createWidgetBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateWidgeteDrop(ILjava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0

    :cond_2
    const-string v2, "DragState"

    const-string v4, "fail to create appWidgetHostView bitmap"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v12, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v15, v15, 0x81

    if-eqz v15, :cond_4

    const/4 v5, 0x1

    :goto_0
    new-instance v6, Lcom/android/launcher2/AppItem;

    invoke-direct {v6, v3, v5}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v13, :cond_0

    if-eqz v11, :cond_0

    :try_start_0
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    move/from16 v16, v0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v7, v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v15

    iget v15, v15, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v12, v15, v0}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmapByPackageName(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_1

    invoke-virtual {v8, v9}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_1
    if-nez v10, :cond_5

    :cond_2
    :goto_2
    iput-object v9, v6, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v6, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-boolean v15, v6, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v15, :cond_3

    if-eqz v11, :cond_3

    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-wide v0, v15, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    return-object v6

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v9, v10

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v15, "DragState"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot find PackageInfo for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v15

    goto :goto_1
.end method

.method private deleteFromSource()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v1, v2}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v1, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v1, v1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->remove(Lcom/android/launcher2/BaseItem;)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-static {v2, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method private fillHomeItemFields(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/compat/UserHandleCompat;JIIIZ)V
    .locals 3

    const/4 v1, -0x1

    iput-wide p3, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput p5, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput p7, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput-object p2, p1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    if-eqz p8, :cond_0

    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_0
    return-void
.end method

.method private findActivityForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/DragOrigin;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initItemInfo(Landroid/content/Intent;I)Lcom/android/launcher2/BaseItem;
    .locals 19

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020077

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v4, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const v17, 0x7f100087

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    new-instance v14, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v14, v7, v5}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {v14 .. v16}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    if-ltz v17, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    if-gez v17, :cond_3

    :cond_1
    const-string v17, "DragState"

    const-string v18, "Drag shadow touch point must not be negative"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_1
    return-object v17

    :sswitch_0
    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v9

    if-eqz v9, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/launcher2/HomeShortcutItem;->setFromDND(Z)Z

    move-object v13, v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/DragState;->getAvailableWidget(Landroid/content/ComponentName;I)Lcom/android/launcher2/HomePendingItem;

    move-result-object v8

    if-eqz v8, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/launcher2/HomePendingItem;->setFromDND(Z)Z

    move-object v13, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher2/DragState;->findActivityForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v12

    const/4 v3, 0x0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/DragState;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/AppItem;->setFromDND(Z)Z

    move-object v13, v3

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    if-ltz v17, :cond_4

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    if-gez v17, :cond_5

    :cond_4
    const-string v17, "DragState"

    const-string v18, "Drag shadow dimensions must not be negative"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    :cond_6
    move-object/from16 v17, v13

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z
    .locals 28

    if-nez p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v4

    const/16 v19, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BaseItem;->setFromDND(Z)Z

    move-result v20

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v3, :cond_c

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-object v3, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    if-eqz v19, :cond_2

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_1b

    if-eqz p3, :cond_1b

    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v3, :cond_1a

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutFolder;->acceptMoveTo(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_3
    :goto_2
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_9

    :cond_4
    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-wide/from16 v16, v4

    invoke-interface/range {v9 .. v17}, Lcom/android/launcher2/DragReceivable;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-nez v3, :cond_5

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_1c

    :cond_5
    const/16 v21, 0x1

    :goto_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_9

    if-nez v21, :cond_6

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move/from16 v0, v22

    if-eq v3, v0, :cond_6

    move/from16 v0, p8

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_7
    if-nez v21, :cond_8

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_8

    const/4 v3, 0x1

    move/from16 v0, p8

    if-ne v0, v3, :cond_9

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_a

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getHotSeatDisabled()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/launcher2/CellLayoutHotseat;->setHotSeatDisabled(Z)V

    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->addItem(Lcom/android/launcher2/BaseItem;)Z

    if-eqz p3, :cond_b

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_b

    check-cast p2, Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/DragState;->mAnimateView:Landroid/view/View;

    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_0
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-object v3, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown item type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object/from16 v8, p1

    check-cast v8, Lcom/android/launcher2/HomePendingWidget;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-wide v10, v4

    move/from16 v12, p8

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v7 .. v15}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/compat/UserHandleCompat;JIIIZ)V

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;Z)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomePendingItem;

    iget-object v11, v3, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    const/4 v3, 0x2

    new-array v15, v3, [I

    const/4 v3, 0x0

    aput p4, v15, v3

    const/4 v3, 0x1

    aput p5, v15, v3

    const/16 v16, 0x0

    move-object v10, v2

    move-wide v12, v4

    move/from16 v14, p8

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher2/HomeView;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    :cond_d
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/DragState$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/launcher2/DragState$1;-><init>(Lcom/android/launcher2/DragState;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    move/from16 v0, p8

    if-ne v0, v3, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_e
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_13

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-eqz v3, :cond_11

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-eqz v3, :cond_11

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v3, :cond_10

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/CellLayoutFolder;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutFolder;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/HomeFolderItem;

    if-nez v3, :cond_11

    :cond_10
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_13

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_13

    :cond_11
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/launcher2/AppFolderItem;

    move-wide v12, v4

    move/from16 v14, p8

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-static/range {v10 .. v16}, Lcom/android/launcher2/HomeFolderItem;->createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;

    move-result-object p1

    goto/16 :goto_1

    :cond_12
    check-cast p1, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppItem;->makeHomeItem(Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    add-int/lit8 v25, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v23

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v27

    if-eqz v27, :cond_14

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_14

    add-int/lit8 v3, v23, -0x1

    move/from16 v0, p8

    if-ge v0, v3, :cond_14

    add-int/lit8 v23, v23, -0x1

    :cond_14
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0800cc

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, p4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_16
    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080065

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v18, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, v23, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_1

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, p4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    add-int/lit8 v10, p5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_19
    const-string v3, "DragState"

    const-string v6, "reentering folder by dragging folder"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto/16 :goto_2

    :cond_1b
    if-nez p3, :cond_3

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_3

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_3

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto/16 :goto_2

    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateMinSpan([II[I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p3, v1

    aput v0, p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget v0, p3, v2

    aput v0, p1, v2

    :cond_1
    return-void
.end method


# virtual methods
.method public createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;
    .locals 20

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    if-eqz p1, :cond_0

    move-object/from16 v13, p1

    :cond_0
    if-eqz v13, :cond_a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, -0x64

    iget-object v3, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v5, :cond_2

    check-cast v13, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v13, v3}, Lcom/android/launcher2/AppItem;->makeHomeItem(Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v4

    :cond_1
    :goto_0
    if-eqz v4, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const-string v5, ""

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher2/HomeView;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v12

    if-nez v12, :cond_8

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_2
    iget-object v3, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v5, :cond_3

    instance-of v3, v13, Lcom/android/launcher2/HomePendingItem;

    if-eqz v3, :cond_3

    check-cast v13, Lcom/android/launcher2/HomePendingItem;

    iget-object v14, v13, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/launcher2/HomeView;->processItemDropToNewFolder(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_3
    iget-object v3, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v5, :cond_4

    iget-object v3, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v5, :cond_1

    instance-of v3, v13, Lcom/android/launcher2/HomePendingItem;

    if-nez v3, :cond_1

    :cond_4
    move-object v4, v13

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-wide v0, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v3, v16, v18

    if-eqz v3, :cond_5

    iget-wide v0, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v3, v16, v18

    if-nez v3, :cond_7

    :cond_5
    const/4 v8, 0x1

    iget-wide v6, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget-wide v0, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v3, v16, v18

    if-nez v3, :cond_1

    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iput v3, v4, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    goto :goto_0

    :cond_7
    const/4 v8, 0x1

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/FolderIconView;

    move-object v2, v10

    invoke-static {v12, v2}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    if-nez p3, :cond_a

    iget-wide v0, v12, Lcom/android/launcher2/HomeFolderItem;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v3, v16, v18

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    :cond_9
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/DragState$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12, v2}, Lcom/android/launcher2/DragState$4;-><init>(Lcom/android/launcher2/DragState;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/FolderIconView;)V

    sget v5, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    move-object v3, v10

    goto/16 :goto_1
.end method

.method public dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    iget v8, v9, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object v0, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    return-void
.end method

.method public dropItemtoTarget(Lcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 10

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, p3}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    iget v8, v9, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object v0, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    return-void
.end method

.method public foundValidDrop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return v0
.end method

.method public getAvailableWidget(Landroid/content/ComponentName;I)Lcom/android/launcher2/HomePendingItem;
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_1

    :pswitch_2
    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_2

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getFolderParent()Lcom/android/launcher2/Folder;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    instance-of v3, v0, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/launcher2/Folder;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    :goto_0
    return-object v3

    :cond_0
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getReceiver()Lcom/android/launcher2/DragReceivable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    return-object v0
.end method

.method public getShadow()Lcom/android/launcher2/ShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-object v0
.end method

.method public getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    return v0
.end method

.method public logDebugInfo()V
    .locals 4

    const-string v0, "==============================================================================="

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    const-string v2, "DragState member variables:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragOrigin:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v2, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFoundValidDrop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnded:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEndRunnable:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlockDeleteFromSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    const-string v2, "details:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z
    .locals 13

    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mAllowMoveAfterDrop:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    sget-boolean v1, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v1, :cond_2

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reciever:        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/launcher2/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   y:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen:          "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to move item after the drop was handled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v1}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    if-eqz p7, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v1, v1, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v1, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-direct {p0, v1}, Lcom/android/launcher2/DragState;->animateWidgetDrop(Lcom/android/launcher2/CellLayout;)V

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v1, v1, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v1, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {v1}, Lcom/android/launcher2/HomePendingWidget;->getHomeWidgetItem()Lcom/android/launcher2/HomeWidgetItem;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v10

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, v10, Lcom/android/launcher2/HomeView;->WidgetAnimEndCallBack:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDelete()V
    .locals 10

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v7}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    :cond_1
    iput-boolean v9, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    iput-boolean v9, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v9, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v7, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v7, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v7, Lcom/android/launcher2/DragState$2;

    const-string v8, "deleteAppWidgetId"

    invoke-direct {v7, p0, v8, v0, v4}, Lcom/android/launcher2/DragState$2;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v7}, Lcom/android/launcher2/DragState$2;->start()V

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v7, v7, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->unbind()V

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v7, v7, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v7, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v2, :cond_5

    iget-object v7, v2, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v7, Lcom/android/launcher2/HomePendingWidget;

    iget-object v5, v7, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v7, Lcom/android/launcher2/DragState$3;

    const-string v8, "deleteAppWidgetId"

    invoke-direct {v7, p0, v8, v0, v1}, Lcom/android/launcher2/DragState$3;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;I)V

    invoke-virtual {v7}, Lcom/android/launcher2/DragState$3;->start()V

    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    iget-object v7, v2, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    :cond_5
    sget-object v7, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v8, 0x7f080066

    invoke-virtual {v7, v8}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v3, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    invoke-virtual {v3, v9}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    return-void
.end method

.method public onDragStartedSuccessfully()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->hide(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return-void
.end method

.method public onDropSetEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->onDrop()V

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onEnd()V
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v5}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v1, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/IconMoveContainer;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v6, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getPositionByPage(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DragOrigin;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DragOrigin;->show(Lcom/android/launcher2/BaseItem;)V

    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v5, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto/16 :goto_0
.end method

.method public setAllowMoveAfterDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/DragState;->mAllowMoveAfterDrop:Z

    return-void
.end method

.method public setShadow(Lcom/android/launcher2/ShadowBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-void
.end method
