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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    const-string/jumbo v0, "DataType"

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    iput-byte p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    iput-wide p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    iput-object p4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->computeLength()V

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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->REPEATLIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    return-void
.end method

.method private computeLength()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BOOLEAN:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_4

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE2:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-eq v0, v1, :cond_5

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    goto :goto_0
.end method


# virtual methods
.method dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mDataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    return-object v0
.end method

.method messageType()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mMessageType:B

    return v0
.end method

.method name()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mRepeatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method scale()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mConversionScale:D

    return-wide v0
.end method

.method size()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->mSize:B

    return v0
.end method
