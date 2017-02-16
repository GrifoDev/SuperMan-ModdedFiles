.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
.super Ljava/lang/Object;
.source "SensorHubSyntax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;
    }
.end annotation


# instance fields
.field private final mConversionScale:D

.field private final mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

.field private mMessageType:B

.field private final mName:Ljava/lang/String;

.field private final mRepeatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:B


# direct methods
.method public constructor <init>(B)V
    .locals 3
    .param p1, "mType"    # B

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    .line 51
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    .line 66
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    const-string/jumbo v0, "DataType"

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    .line 68
    iput-byte p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    .line 69
    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V
    .locals 2
    .param p1, "dType"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;
    .param p2, "scale"    # D
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    .line 51
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    .line 54
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    iput-wide p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    iput-object p4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->computeLength()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    .line 51
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    .line 60
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->REPEATLIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    .line 62
    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    .line 59
    return-void
.end method

.method private computeLength()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    .line 96
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BOOLEAN:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_3

    .line 101
    :cond_2
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_4

    .line 103
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_6

    .line 105
    :cond_5
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_5

    .line 107
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0
.end method


# virtual methods
.method dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    return-object v0
.end method

.method messageType()B
    .locals 1

    .prologue
    .line 93
    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    return v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    return-object v0
.end method

.method repeatList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method scale()D
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    return-wide v0
.end method

.method size()B
    .locals 1

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    return v0
.end method
