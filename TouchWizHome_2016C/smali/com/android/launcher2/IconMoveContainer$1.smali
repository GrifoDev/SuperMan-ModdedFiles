.class Lcom/android/launcher2/IconMoveContainer$1;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconMoveContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/android/launcher2/IconMoveContainer$10;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t know how to convert item into view for MoveAppsPanel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$000(Lcom/android/launcher2/IconMoveContainer;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003b

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v2}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mIconSize:I
    invoke-static {v3}, Lcom/android/launcher2/IconMoveContainer;->access$100(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mTextSize:I
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$200(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setCustomTextSize(F)V

    invoke-virtual {v0, v5}, Lcom/android/launcher2/AppIconView;->setNeverDrawShadow(Z)V

    invoke-virtual {v0, v4, v6, v4, v4}, Lcom/android/launcher2/AppIconView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$300(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$300(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$000(Lcom/android/launcher2/IconMoveContainer;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030039

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mIconSize:I
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$100(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v2

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;ZI)V

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mTextSize:I
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$200(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setCustomTextSize(F)V

    invoke-virtual {v1, v5}, Lcom/android/launcher2/FolderIconView;->setNeverDrawShadow(Z)V

    invoke-virtual {v1, v4, v6, v4, v4}, Lcom/android/launcher2/FolderIconView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v2}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v3}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 12

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutMoveApps;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v7}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    const-string v7, "scrollX"

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v10}, Lcom/android/launcher2/IconMoveContainer;->access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mCellWidth:I
    invoke-static {v11}, Lcom/android/launcher2/IconMoveContainer;->access$700(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mCellGap:I
    invoke-static {v11}, Lcom/android/launcher2/IconMoveContainer;->access$800(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x14a

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    instance-of v6, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/AppIconView;

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mItemViewShowLabel:Z
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$900(Lcom/android/launcher2/IconMoveContainer;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppIconView;->setSingleLine(Z)V

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mLabelColor:I
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$1000(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mTextSize:I
    invoke-static {v7}, Lcom/android/launcher2/IconMoveContainer;->access$200(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    instance-of v6, p1, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawableFolderPadding:I
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$1100(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablePadding(I)V

    :cond_1
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v3, p2

    check-cast v3, Lcom/android/launcher2/HomeItem;

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iget-wide v8, v3, Lcom/android/launcher2/HomeItem;->container:J

    # invokes: Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;
    invoke-static {v6, v8, v9}, Lcom/android/launcher2/IconMoveContainer;->access$1300(Lcom/android/launcher2/IconMoveContainer;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v5

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_7

    const-string v6, "IconMoveContainer"

    const-string v7, "Nothing to do => folder close will be processed in Folder.java (onItemChanged)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    move-object v1, v5

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    new-instance v7, Lcom/android/launcher2/IconMoveContainer$1$1;

    invoke-direct {v7, p0, v1, v3}, Lcom/android/launcher2/IconMoveContainer$1$1;-><init>(Lcom/android/launcher2/IconMoveContainer$1;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    new-instance v6, Lcom/android/launcher2/IconMoveContainer$1$2;

    invoke-direct {v6, p0}, Lcom/android/launcher2/IconMoveContainer$1$2;-><init>(Lcom/android/launcher2/IconMoveContainer$1;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    const/4 v7, 0x0

    # setter for: Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z
    invoke-static {v6, v7}, Lcom/android/launcher2/IconMoveContainer;->access$1502(Lcom/android/launcher2/IconMoveContainer;Z)Z

    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    # getter for: Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawablePadding:I
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainer;->access$1200(Lcom/android/launcher2/IconMoveContainer;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->cancelCloseFolderAlarm()V

    goto :goto_1
.end method
