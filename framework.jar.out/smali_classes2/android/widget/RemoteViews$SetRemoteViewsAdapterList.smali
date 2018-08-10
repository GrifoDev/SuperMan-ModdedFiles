.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterList"
.end annotation


# static fields
.field public static final TAG:I = 0xf


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iput p4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 4

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 8

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    instance-of v4, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_1

    const-string/jumbo v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-nez v4, :cond_2

    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const-string/jumbo v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-eqz v4, :cond_5

    move-object v2, v1

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    if-gt v4, v5, :cond_4

    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v4, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_5
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v4, :cond_3

    move-object v3, v1

    check-cast v3, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    if-gt v4, v5, :cond_6

    check-cast v0, Landroid/widget/RemoteViewsListAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_6
    new-instance v4, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SetRemoteViewsAdapterList"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
