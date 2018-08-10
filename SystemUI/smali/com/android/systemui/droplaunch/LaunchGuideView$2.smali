.class Lcom/android/systemui/droplaunch/LaunchGuideView$2;
.super Ljava/lang/Object;
.source "LaunchGuideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/droplaunch/LaunchGuideView;->startApp(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/droplaunch/LaunchGuideView;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$targetBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/droplaunch/LaunchGuideView;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->this$0:Lcom/android/systemui/droplaunch/LaunchGuideView;

    iput-object p2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->val$targetBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->val$targetBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->val$targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->val$targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->this$0:Lcom/android/systemui/droplaunch/LaunchGuideView;

    invoke-static {v2}, Lcom/android/systemui/droplaunch/LaunchGuideView;->-get0(Lcom/android/systemui/droplaunch/LaunchGuideView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;->val$cn:Landroid/content/ComponentName;

    invoke-static {v3}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
