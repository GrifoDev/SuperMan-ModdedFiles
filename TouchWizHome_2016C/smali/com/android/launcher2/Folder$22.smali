.class Lcom/android/launcher2/Folder$22;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    instance-of v2, p1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1900(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002e

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mItemClickListenerProxy:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/android/launcher2/Folder;->access$2000(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/FocusHelper;->FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->hideBadge()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->showBadge()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1900(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030016

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mItemClickListenerProxy:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$2000(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$22;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v2, Lcom/android/launcher2/FocusHelper;->FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    return-void
.end method
