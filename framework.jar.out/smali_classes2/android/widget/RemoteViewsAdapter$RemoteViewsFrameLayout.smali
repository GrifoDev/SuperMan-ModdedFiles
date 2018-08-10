.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/appwidget/AppWidgetHostView;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsFrameLayout"
.end annotation


# instance fields
.field private final mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 5

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v2

    iget v1, v2, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900d9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getDefaultView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteContext()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Z)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    if-nez p3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
