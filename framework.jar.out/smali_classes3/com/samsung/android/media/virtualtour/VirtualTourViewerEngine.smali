.class public Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngine;
.super Ljava/lang/Object;
.source "VirtualTourViewerEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualTourViewer"

.field private static msUseEngine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetEngineObj()Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "SRIB"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngine;->msUseEngine:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Render Engine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngine;->msUseEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualTourViewer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SRIB"

    const-string/jumbo v1, "SRIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;

    invoke-direct {v0}, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;-><init>()V

    return-object v0
.end method

.method public static GetImgProviderObj(Ljava/lang/String;)Lcom/samsung/android/media/virtualtour/IVirtualTourImageProvider;
    .locals 2

    const-string/jumbo v0, "SRIB"

    const-string/jumbo v1, "SRIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static GetOffScreenEngineObj()Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "SRIB"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngine;->msUseEngine:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Render Engine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngine;->msUseEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualTourViewer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SRIB"

    const-string/jumbo v1, "SRIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;

    invoke-direct {v0}, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;-><init>()V

    return-object v0
.end method
