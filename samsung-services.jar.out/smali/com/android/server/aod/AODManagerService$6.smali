.class Lcom/android/server/aod/AODManagerService$6;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get15(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get15(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v4}, Lcom/android/server/aod/AODManagerService;->-get14(Lcom/android/server/aod/AODManagerService;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->-wrap34(Lcom/android/server/aod/AODManagerService;I)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
