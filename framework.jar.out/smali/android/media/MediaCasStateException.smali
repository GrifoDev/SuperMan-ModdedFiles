.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-void
.end method

.method static throwExceptions(Landroid/os/ServiceSpecificException;)V
    .locals 8

    const-string/jumbo v0, ""

    iget v1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "Unknown CAS state exception"

    :goto_0
    new-instance v1, Landroid/media/MediaCasStateException;

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%s (err=%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    iget v6, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string/jumbo v0, "General CAS error"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "No license"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "License expired"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Session not opened"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Not initialized"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "Decrypt error"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "Unsupported scheme or data format"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "Tamper detected"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x7d7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
