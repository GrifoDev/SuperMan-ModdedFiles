.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "VoiceLibProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final getInstructionForDisable()B
    .locals 1

    .prologue
    .line 60
    const/16 v0, -0x1e

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    .prologue
    .line 49
    const/16 v0, -0x1f

    return v0
.end method
