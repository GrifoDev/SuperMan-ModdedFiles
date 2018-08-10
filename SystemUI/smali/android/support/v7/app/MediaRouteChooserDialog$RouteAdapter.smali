.class final Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field private final mTvIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {p0, p2, v4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRouteDefaultIconDrawable:I

    aput v3, v2, v4

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTvIconDrawable:I

    aput v3, v2, v5

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRouteSpeakerIconDrawable:I

    aput v3, v2, v6

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRouteSpeakerGroupIconDrawable:I

    aput v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getDefaultIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "MediaRouteChooserDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getDefaultIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    move-object v6, p2

    if-nez p2, :cond_0

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Landroid/support/v7/mediarouter/R$layout;->mr_chooser_list_item:I

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    sget v7, Landroid/support/v7/mediarouter/R$id;->mr_chooser_route_name:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v7, Landroid/support/v7/mediarouter/R$id;->mr_chooser_route_desc:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getConnectionState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getConnectionState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    const/16 v7, 0x50

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    sget v7, Landroid/support/v7/mediarouter/R$id;->mr_chooser_route_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v6

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteChooserDialog;->dismiss()V

    :cond_0
    return-void
.end method
