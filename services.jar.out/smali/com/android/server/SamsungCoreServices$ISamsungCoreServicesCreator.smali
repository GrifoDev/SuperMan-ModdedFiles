.class public interface abstract Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;
.super Ljava/lang/Object;
.source "SamsungCoreServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungCoreServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISamsungCoreServicesCreator"
.end annotation


# virtual methods
.method public abstract createActivityManagerServiceBridge(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActivityManagerServiceBridge;
.end method

.method public abstract createAlarmManagerServiceBridge(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)Lcom/android/server/IAlarmManagerServiceBridge;
.end method

.method public abstract createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;
.end method

.method public abstract getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;
.end method

.method public abstract isAvailable(Lcom/android/server/SamsungCoreServices$ServiceTag;)Z
.end method
