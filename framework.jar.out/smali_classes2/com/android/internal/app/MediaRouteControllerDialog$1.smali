.class Lcom/android/internal/app/MediaRouteControllerDialog$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get1(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$1;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    return-void
.end method
