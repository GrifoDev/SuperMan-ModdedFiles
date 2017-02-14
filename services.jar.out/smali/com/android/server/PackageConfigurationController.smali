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
.method public abstract disableFixedAspectRatioForPackage(Ljava/lang/String;)V
.end method

.method public abstract disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V
.end method

.method public abstract disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V
.end method

.method public abstract disableScreenAreaForPackage(Ljava/lang/String;)V
.end method

.method public abstract enableFixedAspectRatioForPackage(Ljava/lang/String;F)V
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

.method public abstract getReducedAppScreenParams(I)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
.end method

.method public abstract getReducedAppScreenParams(Ljava/lang/String;)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
.end method

.method public abstract getReducedSideTouchArea(I)I
.end method

.method public abstract getReducedSideTouchArea(Ljava/lang/String;)I
.end method

.method public abstract isNavbarIsAlwaysEnabled(I)Z
.end method

.method public abstract isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z
.end method

.method public abstract onApplicationStarted(Ljava/lang/String;I)V
.end method

.method public abstract onApplicationStopped(Ljava/lang/String;I)V
.end method

.method public abstract resetPackageConfiguration(Ljava/lang/String;)V
.end method
