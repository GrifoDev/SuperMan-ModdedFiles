.class public abstract Landroid/hardware/radio/RadioTuner$Callback;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntennaState(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 290
    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .prologue
    .line 264
    return-void
.end method

.method public onControlChanged(Z)V
    .locals 0
    .param p1, "control"    # Z

    .prologue
    .line 302
    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 286
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 258
    return-void
.end method

.method public onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "metadata"    # Landroid/hardware/radio/RadioMetadata;

    .prologue
    .line 278
    return-void
.end method

.method public onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .prologue
    .line 272
    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 282
    return-void
.end method
