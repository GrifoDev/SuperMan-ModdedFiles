.class public Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;,
        Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;,
        Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;,
        Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;,
        Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;
    }
.end annotation


# instance fields
.field private app_status:[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;

.field private auth_info:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

.field private auth_status:I

.field private device_idx:I

.field private device_type_value:Ljava/lang/String;

.field private duid:J

.field private msisdn:Ljava/lang/String;

.field private ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

.field private tfa_status:[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppStatus()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->app_status:[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;

    return-object v0
.end method

.method public getAuthInfo()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->auth_info:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    return-object v0
.end method

.method public getAuthStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->auth_status:I

    return v0
.end method

.method public getDeviceIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->device_idx:I

    return v0
.end method

.method public getDeviceTypeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->device_type_value:Ljava/lang/String;

    return-object v0
.end method

.method public getDuid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->duid:J

    return-wide v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedServices()[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

    return-object v0
.end method

.method public getTwofaAuth()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->tfa_status:[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;

    return-object v0
.end method

.method public setAuthInfo(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->auth_info:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    return-void
.end method

.method public setAuthStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->auth_status:I

    return-void
.end method

.method public setDeviceIdx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->device_idx:I

    return-void
.end method

.method public setDeviceTypeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->device_type_value:Ljava/lang/String;

    return-void
.end method

.method public setDuid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->duid:J

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setSs([Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponse [auth_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->auth_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->auth_info:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msisdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device_type_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->device_type_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tfa_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->tfa_status:[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->app_status:[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
