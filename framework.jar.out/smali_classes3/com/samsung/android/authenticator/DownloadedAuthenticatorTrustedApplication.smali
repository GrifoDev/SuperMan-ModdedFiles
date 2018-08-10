.class final Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;
.super Ljava/lang/Object;
.source "DownloadedAuthenticatorTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "DATA"


# instance fields
.field private final mHandle:I

.field private final mLen:J

.field private final mOffset:J

.field private final mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(ILandroid/os/ParcelFileDescriptor;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mHandle:I

    iput-object p2, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-wide p3, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mOffset:J

    iput-wide p5, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mLen:J

    return-void
.end method


# virtual methods
.method public execute([B)[B
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->process([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mHandle:I

    return v0
.end method

.method public load()I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mPfd:Landroid/os/ParcelFileDescriptor;

    iget-wide v2, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mOffset:J

    iget-wide v4, p0, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;->mLen:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/authenticator/AuthenticatorService;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DATA"

    const-string/jumbo v1, "i failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unload()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->terminate()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DATA"

    const-string/jumbo v1, "t failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
