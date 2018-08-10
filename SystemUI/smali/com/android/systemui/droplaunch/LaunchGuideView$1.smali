.class Lcom/android/systemui/droplaunch/LaunchGuideView$1;
.super Ljava/lang/Object;
.source "LaunchGuideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/droplaunch/LaunchGuideView;->startApp(Landroid/app/PendingIntent;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/droplaunch/LaunchGuideView;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$targetBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/droplaunch/LaunchGuideView;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->this$0:Lcom/android/systemui/droplaunch/LaunchGuideView;

    iput-object p2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->val$targetBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->val$targetBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->val$targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->val$targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
