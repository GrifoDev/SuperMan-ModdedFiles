.class public final Landroid/telecom/Call$RttCall;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttCall"
.end annotation


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x3e8

.field public static final RTT_MODE_FULL:I = 0x1

.field public static final RTT_MODE_HCO:I = 0x2

.field public static final RTT_MODE_INVALID:I = 0x0

.field public static final RTT_MODE_VCO:I = 0x3


# instance fields
.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private mReadBuffer:[C

.field private mReceiveStream:Ljava/io/InputStreamReader;

.field private mRttMode:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private mTransmitStream:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    iput-object p1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iput-object p3, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    iput p4, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    iput-object p5, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    return-void
.end method


# virtual methods
.method public getRttAudioMode()I
    .locals 1

    iget v0, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    return v0
.end method

.method public read()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    if-gez v1, :cond_0

    return-object v7

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Exception encountered when reading from InputStreamReader: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7
.end method

.method public setRttMode(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->setRttMode(Ljava/lang/String;I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method
