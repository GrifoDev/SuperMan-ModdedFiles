.class public Landroid/telephony/ims/feature/MMTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MMTelFeature.java"

# interfaces
.implements Landroid/telephony/ims/feature/IMMTelFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession(I)V
    .locals 0

    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoCallProvider(I)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFeatureRemoved()V
    .locals 0

    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public turnOffIms()V
    .locals 0

    return-void
.end method

.method public turnOnIms()V
    .locals 0

    return-void
.end method
