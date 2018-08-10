.class public Lcom/att/iqi/lib/metrics/mm/MM02;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/mm/MM02;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SIP_REG_STATE_AUTH_CHALLENGE:B = 0x3t

.field public static final IQ_SIP_REG_STATE_AUTH_REGISTER:B = 0x4t

.field public static final IQ_SIP_REG_STATE_NOTIFIED:B = 0x6t

.field public static final IQ_SIP_REG_STATE_NOT_REGISTERED:B = 0x1t

.field public static final IQ_SIP_REG_STATE_REGISTERED:B = 0x5t

.field public static final IQ_SIP_REG_STATE_REGISTERING:B = 0x2t

.field public static final IQ_SIP_REG_STATE_TIMEOUT:B = 0x7t

.field public static final IQ_SIP_REG_STATE_UNKNOWN:B


# instance fields
.field public m_szCallId:Ljava/lang/String;

.field public m_ucRegState:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "MM02"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM02;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM02$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM02$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM02;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM02;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_ucRegState:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_szCallId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_szCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegState()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_ucRegState:B

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_ucRegState:B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_szCallId:Ljava/lang/String;

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_ucRegState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/mm/MM02;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM02;
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_szCallId:Ljava/lang/String;

    return-object p0
.end method

.method public setRegState(B)Lcom/att/iqi/lib/metrics/mm/MM02;
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_ucRegState:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_ucRegState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM02;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
