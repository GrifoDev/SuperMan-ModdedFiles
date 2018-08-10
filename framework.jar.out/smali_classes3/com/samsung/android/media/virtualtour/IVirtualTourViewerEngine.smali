.class public interface abstract Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine;
.super Ljava/lang/Object;
.source "IVirtualTourViewerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;,
        Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;,
        Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;,
        Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;,
        Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;
    }
.end annotation


# virtual methods
.method public abstract animateToNearestNode(F)V
.end method

.method public abstract deInit()V
.end method

.method public abstract getAspectRatio()F
.end method

.method public abstract getAutoMode()Z
.end method

.method public abstract getCameraState(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;)Z
.end method

.method public abstract getCurFOV()F
.end method

.method public abstract getEngineVersion()Ljava/lang/String;
.end method

.method public abstract getImagePositions()[I
.end method

.method public abstract getMaxFOV()F
.end method

.method public abstract getMaxSeekTime()I
.end method

.method public abstract getMinFOV()F
.end method

.method public abstract getSEFParserObj()Lcom/samsung/android/media/virtualtour/IVirtualTourSEFParser;
.end method

.method public abstract getVelocityIncrementFactor()F
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;)Z
.end method

.method public abstract isARModeSupported()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(F)V
.end method

.method public abstract setAutoDriveVelocity(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;)V
.end method

.method public abstract setAutoMode(Z)V
.end method

.method public abstract setCameraAnimation(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;FF)V
.end method

.method public abstract setCameraState(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;FFF)V
.end method

.method public abstract setEventListener(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;)V
.end method

.method public abstract start()V
.end method
