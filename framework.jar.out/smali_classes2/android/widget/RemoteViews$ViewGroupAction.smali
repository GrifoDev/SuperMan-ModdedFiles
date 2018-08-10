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

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->-wrap6(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;I)V
    .locals 7

    const/4 v5, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v5}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_1

    new-instance v0, Landroid/widget/RemoteViews;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    :goto_1
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iput-object v5, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 2

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

.method public hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-get3(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-get3(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    iget v5, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v5}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-nez v5, :cond_2

    invoke-static {v1, v6}, Landroid/widget/RemoteViews$ViewTree;->-set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction$1;

    invoke-direct {v5, p0, v2}, Landroid/widget/RemoteViews$ViewGroupAction$1;-><init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/view/ViewGroup;)V

    return-object v5

    :cond_2
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-static {v5, v0, v2, v6, p3}, Landroid/widget/RemoteViews;->-wrap2(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v5}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v3}, Landroid/widget/RemoteViews$AsyncApplyTask;->-get0(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v5

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;)V

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction$2;

    invoke-direct {v5, p0, v3, v4, v2}, Landroid/widget/RemoteViews$ViewGroupAction$2;-><init>(Landroid/widget/RemoteViews$ViewGroupAction;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;)V

    return-object v5
.end method

.method public mergeBehavior()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prefersAsyncApply()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-wrap8(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    :cond_0
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
