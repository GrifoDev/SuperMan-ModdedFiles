.class Lcom/android/server/wm/FreeformStackWindowController$1;
.super Ljava/lang/Object;
.source "FreeformStackWindowController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformStackWindowController;->loadMinimizeAnimationLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FreeformStackWindowController;

.field final synthetic val$sourceFrame:Landroid/graphics/Rect;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/FreeformStackWindowController;ILandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/FreeformStackWindowController$1;->this$0:Lcom/android/server/wm/FreeformStackWindowController;

    iput p2, p0, Lcom/android/server/wm/FreeformStackWindowController$1;->val$taskId:I

    iput-object p3, p0, Lcom/android/server/wm/FreeformStackWindowController$1;->val$sourceFrame:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController$1;->this$0:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-static {v1}, Lcom/android/server/wm/FreeformStackWindowController;->-get1(Lcom/android/server/wm/FreeformStackWindowController;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/FreeformStackWindowController$1;->val$taskId:I

    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController$1;->val$sourceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
