.class public interface abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
.super Ljava/lang/Object;
.source "ISensorHubResetObservable.java"


# static fields
.field public static final SENSORHUB_NONE:B = 0x0t

.field public static final SENSORHUB_RESET:B = -0x2bt


# virtual methods
.method public abstract notifySensorHubResetObserver(I)V
.end method

.method public abstract registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
.end method

.method public abstract unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
.end method
