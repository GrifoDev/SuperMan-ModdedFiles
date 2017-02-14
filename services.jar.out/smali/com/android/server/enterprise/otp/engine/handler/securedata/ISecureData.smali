.class public interface abstract Lcom/android/server/enterprise/otp/engine/handler/securedata/ISecureData;
.super Ljava/lang/Object;
.source "ISecureData.java"


# virtual methods
.method public abstract createToken(Landroid/os/Bundle;)I
.end method

.method public abstract deleteToken(Ljava/lang/String;)I
.end method

.method public abstract generateOtp(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getCertificate()[B
.end method

.method public abstract getDbHmacKey()Ljava/lang/String;
.end method

.method public abstract getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
.end method

.method public abstract getHmac(Ljava/lang/String;I[B)[B
.end method

.method public abstract getOtpDbHmac()Ljava/lang/String;
.end method

.method public abstract keyProvClientHello(Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;)Lcom/samsung/android/knox/otp/DSKPPKeyProvClientHello;
.end method

.method public abstract keyProvServerFinish(Landroid/os/Bundle;)I
.end method

.method public abstract otpInit()I
.end method

.method public abstract otpShutdown()I
.end method

.method public abstract resyncToken(Landroid/os/Bundle;)I
.end method

.method public abstract setDbHmacKey()I
.end method

.method public abstract setOtpDbHmac(Ljava/lang/String;)I
.end method
