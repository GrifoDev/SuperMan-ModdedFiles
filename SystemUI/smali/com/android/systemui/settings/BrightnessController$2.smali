.class Lcom/android/systemui/settings/BrightnessController$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get3(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get19(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
