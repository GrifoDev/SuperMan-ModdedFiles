.class Landroid/app/ExitTransitionCoordinator$10;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->notifyComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic val$sharedElementBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$10;->val$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$10;->val$sharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 3

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->val$resultReceiver:Landroid/os/ResultReceiver;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$10;->val$sharedElementBundle:Landroid/os/Bundle;

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap4(Landroid/app/ExitTransitionCoordinator;)V

    return-void
.end method
