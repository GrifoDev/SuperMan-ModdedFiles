.class public interface abstract Lcom/android/server/DssController;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DssController$Tools;
    }
.end annotation


# virtual methods
.method public abstract addPackageData(Ljava/lang/String;F)V
.end method

.method public abstract addPackageData(Ljava/lang/String;FI)V
.end method

.method public abstract addPackageData(Ljava/lang/String;FLjava/lang/String;)V
.end method

.method public abstract createScaledConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
.end method

.method public abstract getGameSiopLevel(Ljava/lang/String;)I
.end method

.method public abstract getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getScalingFactor(I)F
.end method

.method public abstract getScalingFactor(Ljava/lang/String;)F
.end method

.method public abstract getWhiteList()Ljava/lang/StringBuilder;
.end method

.method public abstract isScaledApp(I)Z
.end method

.method public abstract isScaledApp(Ljava/lang/String;)Z
.end method

.method public abstract onApplicationStarted(Ljava/lang/String;I)F
.end method

.method public abstract onApplicationStopped(Ljava/lang/String;I)V
.end method

.method public abstract removePackage(Ljava/lang/String;)V
.end method

.method public abstract scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
.end method

.method public abstract setDssForPackage(Ljava/lang/String;F)V
.end method

.method public abstract showAllDSSInfo()V
.end method
