.class final Lcom/samsung/android/authenticator/FingerprintTrustedApplication;
.super Ljava/lang/Object;
.source "FingerprintTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field static final GET_AUTH_RESULT_COMMAND:[B

.field static final SET_AUTH_CHALLENGE_COMMAND:[B

.field private static final SUCCESS:[B

.field private static final TAG:Ljava/lang/String; = "FTA"


# instance fields
.field private final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    new-array v0, v3, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    sput-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return-void
.end method


# virtual methods
.method public execute([B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "FTA"

    const-string/jumbo v2, "command is invalid"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [B

    return-object v1

    :cond_1
    new-array v0, v3, [B

    sget-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->setChallenge([B)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    :cond_2
    :goto_0
    const-string/jumbo v1, "FTA"

    const-string/jumbo v2, "command is not supported"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->getWrappedObject([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return v0
.end method

.method public load()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unload()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
