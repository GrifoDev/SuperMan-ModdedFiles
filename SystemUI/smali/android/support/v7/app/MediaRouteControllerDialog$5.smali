.class Landroid/support/v7/app/MediaRouteControllerDialog$5;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->loadInterpolator()V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    return-void
.end method
