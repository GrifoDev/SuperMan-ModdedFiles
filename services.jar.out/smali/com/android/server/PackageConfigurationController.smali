.class public interface abstract Lcom/android/server/PackageConfigurationController;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;,
        Lcom/android/server/PackageConfigurationController$Tools;
    }
.end annotation


# virtual methods
.method public abstract addPackageToReducedScreenBlacklist(Ljava/lang/String;Z)V
.end method

.method public abstract confirmWindowInitialized(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disableCustomAspectRatio(Ljava/lang/String;)Z
.end method

.method public abstract disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V
.end method

.method public abstract disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V
.end method

.method public abstract dumpPackageConfiguration(Ljava/io/PrintWriter;)V
.end method

.method public abstract enableBackgroundSurfaceForPackage(Ljava/lang/String;Z)V
.end method

.method public abstract enableCustomAspectRatio(Ljava/lang/String;F)Z
.end method

.method public abstract enableNavbarIsAlwaysEnabled(Ljava/lang/String;Z)V
.end method

.method public abstract enableReducedScreenAreaForPackage(Ljava/lang/String;FFF)V
.end method

.method public abstract enableReducedSideTouchAreaForPackage(Ljava/lang/String;I)V
.end method

.method public abstract getAspectRatio(I)F
.end method

.method public abstract getAspectRatio(Ljava/lang/String;)F
.end method

.method public abstract getReducedAppScreenParams(Ljava/lang/String;)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
.end method

.method public abstract getReducedSideTouchArea(I)I
.end method

.method public abstract getReducedSideTouchArea(Ljava/lang/String;)I
.end method

.method public abstract isApplicationStarted(Ljava/lang/String;)Z
.end method

.method public abstract isBackgroundSurfaceNeeded(Ljava/lang/String;)Z
.end method

.method public abstract isCustomAspectRatio(Ljava/lang/String;)Z
.end method

.method public abstract isNavbarIsAlwaysEnabled(I)Z
.end method

.method public abstract isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isWindowInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onApplicationStarted(Ljava/lang/String;II)V
.end method

.method public abstract onApplicationStopped(Ljava/lang/String;I)V
.end method

.method public abstract resetPackageConfiguration(Ljava/lang/String;)V
.end method

.method public abstract setTaskResizeable(II)V
.end method

.method public abstract windowRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method
