.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# static fields
.field public static final TAG:I = 0xa


# instance fields
.field intent:Landroid/content/Intent;

.field isAsync:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->isAsync:Z

    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->isAsync:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 9

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    instance-of v6, p2, Lcom/samsung/android/cocktailbar/CocktailHostView;

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    instance-of v6, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v6, :cond_2

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_2

    const-string/jumbo v6, "RemoteViews"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    instance-of v6, v3, Landroid/widget/AbsListView;

    if-nez v6, :cond_3

    instance-of v6, v3, Landroid/widget/AdapterViewAnimator;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const-string/jumbo v6, "RemoteViews"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v2, :cond_5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v7, "remoteAdapterCocktail"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailHostView;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v7, "remoteAdapterAppWidgetId"

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailHostView;->getCocktailId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    instance-of v6, v3, Landroid/widget/AbsListView;

    if-eqz v6, :cond_6

    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    iget-boolean v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->isAsync:Z

    invoke-virtual {v4, v6, v7}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    invoke-virtual {v4, p3}, Landroid/widget/AbsListView;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object v0, p2

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v7, "remoteAdapterAppWidgetId"

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    instance-of v6, v3, Landroid/widget/AdapterViewAnimator;

    if-eqz v6, :cond_4

    move-object v5, v3

    check-cast v5, Landroid/widget/AdapterViewAnimator;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    iget-boolean v7, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->isAsync:Z

    invoke-virtual {v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    invoke-virtual {v5, p3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto :goto_1
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SetRemoteViewsAdapterIntent"

    return-object v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 4

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->isAsync:Z

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
