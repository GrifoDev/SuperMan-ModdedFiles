.class Landroid/widget/RemoteViews$ViewGroupAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupAction"
.end annotation


# static fields
.field public static final TAG:I = 0x4


# instance fields
.field nestedViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x0

    .line 1669
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 1670
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    .line 1671
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1672
    if-eqz p3, :cond_0

    .line 1673
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->-wrap6(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1669
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1677
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 1678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    .line 1679
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1680
    .local v0, "nestedViewsNull":Z
    :cond_0
    if-nez v0, :cond_1

    .line 1681
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, p2, p3, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1677
    :goto_0
    return-void

    .line 1683
    :cond_1
    iput-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1701
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1702
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1703
    .local v1, "target":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    return-void

    .line 1704
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    .line 1706
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1700
    :goto_0
    return-void

    .line 1709
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViewGroupAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Remove"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Add"

    goto :goto_0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 7
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    const/4 v6, 0x0

    .line 1717
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 1718
    iget v4, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v4}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v1

    .line 1719
    .local v1, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 1722
    iget-object v4, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-nez v4, :cond_1

    .line 1724
    invoke-static {v1, v6}, Landroid/widget/RemoteViews$ViewTree;->-set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1725
    return-object p0

    .line 1720
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    move-result-object v4

    return-object v4

    .line 1728
    :cond_1
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1729
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1730
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1729
    invoke-static {v5, v0, v4, v6, p3}, Landroid/widget/RemoteViews;->-wrap2(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v2

    .line 1731
    .local v2, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 1735
    .local v3, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;)V

    .line 1737
    new-instance v4, Landroid/widget/RemoteViews$ViewGroupAction$1;

    invoke-direct {v4, p0, v2, v3}, Landroid/widget/RemoteViews$ViewGroupAction$1;-><init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;)V

    return-object v4
.end method

.method public mergeBehavior()I
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x1

    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 1759
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-wrap8(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1758
    :cond_0
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 1
    .param p1, "counter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    .prologue
    .line 1752
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1751
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1688
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1691
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1687
    :goto_0
    return-void

    .line 1695
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
