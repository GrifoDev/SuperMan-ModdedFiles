.class Lcom/android/server/pm/KnoxKeyguardScrimView$1;
.super Ljava/lang/Object;
.source "KnoxKeyguardScrimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$1;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "show scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$1;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$1;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const-string/jumbo v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$1;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$1;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    iget-object v0, v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    const-wide/16 v2, 0x1388

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$1;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundColor(I)V

    goto :goto_0
.end method
