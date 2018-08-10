.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;
.super Landroid/hardware/display/IDisplayManagerCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onDeviceEvent(Landroid/os/Bundle;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-wrap0(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V

    return-void
.end method

.method public onDisplayEvent(II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-wrap1(Landroid/hardware/display/DisplayManagerGlobal;II)V

    return-void
.end method

.method public onDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-wrap2(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDisplayVolumeKeyEvent(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->-wrap3(Landroid/hardware/display/DisplayManagerGlobal;I)V

    return-void
.end method
