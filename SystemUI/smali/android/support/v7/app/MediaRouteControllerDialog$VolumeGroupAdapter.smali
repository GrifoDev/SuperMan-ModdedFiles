.class Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mDisabledAlpha:F

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    move-object v5, p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Landroid/support/v7/mediarouter/R$layout;->mr_controller_volume_item:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v2

    sget v8, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v8, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/app/MediaRouteVolumeSlider;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v9, v9, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-static {v8, v7, v9}, Landroid/support/v7/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    invoke-virtual {v7, v3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    invoke-virtual {v7, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    if-eqz v2, :cond_0

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v8, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    :goto_1
    sget v8, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const/16 v8, 0xff

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    sget v8, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x4

    :goto_3
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-object v5

    :cond_2
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v8, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolumeGroupItemHeight(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method
