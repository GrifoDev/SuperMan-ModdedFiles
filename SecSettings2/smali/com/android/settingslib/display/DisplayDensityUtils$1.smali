.class final Lcom/android/settingslib/display/DisplayDensityUtils$1;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$displayId:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->clearForcedDisplayDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to clear forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
