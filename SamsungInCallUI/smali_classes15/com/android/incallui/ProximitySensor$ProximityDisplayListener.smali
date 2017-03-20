.class public Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProximityDisplayListener"
.end annotation


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsDisplayOn:Z

.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor;Landroid/hardware/display/DisplayManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/ProximitySensor;
    .param p2, "displayManager"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    .line 447
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 448
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 479
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x1

    .line 464
    if-nez p1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 467
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 470
    .local v1, "isDisplayOn":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    if-eq v1, v2, :cond_0

    .line 471
    iput-boolean v1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    .line 472
    iget-object v2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/ProximitySensor;->onDisplayStateChanged(Z)V

    .line 475
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "isDisplayOn":Z
    :cond_0
    return-void

    .line 467
    .restart local v0    # "display":Landroid/view/Display;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 460
    return-void
.end method

.method register()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 456
    return-void
.end method
