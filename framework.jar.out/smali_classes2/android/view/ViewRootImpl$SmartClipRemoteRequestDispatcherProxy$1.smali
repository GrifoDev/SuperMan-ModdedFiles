.class Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getScaleFactor()Landroid/graphics/PointF;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTranslatedPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    return-object v0
.end method
