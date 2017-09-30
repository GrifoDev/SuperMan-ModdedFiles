.class public Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    iput-object p2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    if-eq v1, v0, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    iget-boolean v1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mIsDisplayOn:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/ProximitySensor;->onDisplayStateChanged(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method register()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
