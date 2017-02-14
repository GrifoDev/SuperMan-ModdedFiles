.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-void
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .locals 4

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "Opcode: %02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "Feature Abort"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "Image View On"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "Tuner Step Increment"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "Tuner Step Decrement"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "Tuner Device Staus"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "Give Tuner Device Status"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "Record On"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "Record Status"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "Record Off"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "Text View On"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "Record Tv Screen"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "Give Deck Status"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "Deck Status"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "Set Menu Language"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "Clear Analog Timer"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "Set Analog Timer"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "Timer Status"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "Standby"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "Play"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "Deck Control"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "Timer Cleared Status"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "User Control Pressed"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "User Control Release"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "Give Osd Name"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "Set Osd Name"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "Set Osd String"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "Set Timer Program Title"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "System Audio Mode Request"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "Give Audio Status"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "Set System Audio Mode"

    return-object v0

    :sswitch_1e
    const-string/jumbo v0, "Report Audio Status"

    return-object v0

    :sswitch_1f
    const-string/jumbo v0, "Give System Audio Mode Status"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "System Audio Mode Status"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "Routing Change"

    return-object v0

    :sswitch_22
    const-string/jumbo v0, "Routing Information"

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "Active Source"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "Give Physical Address"

    return-object v0

    :sswitch_25
    const-string/jumbo v0, "Report Physical Address"

    return-object v0

    :sswitch_26
    const-string/jumbo v0, "Request Active Source"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "Set Stream Path"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "Device Vendor Id"

    return-object v0

    :sswitch_29
    const-string/jumbo v0, "Vendor Commandn"

    return-object v0

    :sswitch_2a
    const-string/jumbo v0, "Vendor Remote Button Down"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "Vendor Remote Button Up"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "Give Device Vendor Id"

    return-object v0

    :sswitch_2d
    const-string/jumbo v0, "Menu REquest"

    return-object v0

    :sswitch_2e
    const-string/jumbo v0, "Menu Status"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "Give Device Power Status"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "Report Power Status"

    return-object v0

    :sswitch_31
    const-string/jumbo v0, "Get Menu Language"

    return-object v0

    :sswitch_32
    const-string/jumbo v0, "Select Analog Service"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "Select Digital Service"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "Set Digital Timer"

    return-object v0

    :sswitch_35
    const-string/jumbo v0, "Clear Digital Timer"

    return-object v0

    :sswitch_36
    const-string/jumbo v0, "Set Audio Rate"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "InActive Source"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "Cec Version"

    return-object v0

    :sswitch_39
    const-string/jumbo v0, "Get Cec Version"

    return-object v0

    :sswitch_3a
    const-string/jumbo v0, "Vendor Command With Id"

    return-object v0

    :sswitch_3b
    const-string/jumbo v0, "Clear External Timer"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "Set External Timer"

    return-object v0

    :sswitch_3d
    const-string/jumbo v0, "Repot Short Audio Descriptor"

    return-object v0

    :sswitch_3e
    const-string/jumbo v0, "Request Short Audio Descriptor"

    return-object v0

    :sswitch_3f
    const-string/jumbo v0, "Initiate ARC"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "Report ARC Initiated"

    return-object v0

    :sswitch_41
    const-string/jumbo v0, "Report ARC Terminated"

    return-object v0

    :sswitch_42
    const-string/jumbo v0, "Request ARC Initiation"

    return-object v0

    :sswitch_43
    const-string/jumbo v0, "Request ARC Termination"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "Terminate ARC"

    return-object v0

    :sswitch_45
    const-string/jumbo v0, "Cdc Message"

    return-object v0

    :sswitch_46
    const-string/jumbo v0, "Abort"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xd -> :sswitch_9
        0xf -> :sswitch_a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x32 -> :sswitch_d
        0x33 -> :sswitch_e
        0x34 -> :sswitch_f
        0x35 -> :sswitch_10
        0x36 -> :sswitch_11
        0x41 -> :sswitch_12
        0x42 -> :sswitch_13
        0x43 -> :sswitch_14
        0x44 -> :sswitch_15
        0x45 -> :sswitch_16
        0x46 -> :sswitch_17
        0x47 -> :sswitch_18
        0x64 -> :sswitch_19
        0x67 -> :sswitch_1a
        0x70 -> :sswitch_1b
        0x71 -> :sswitch_1c
        0x72 -> :sswitch_1d
        0x7a -> :sswitch_1e
        0x7d -> :sswitch_1f
        0x7e -> :sswitch_20
        0x80 -> :sswitch_21
        0x81 -> :sswitch_22
        0x82 -> :sswitch_23
        0x83 -> :sswitch_24
        0x84 -> :sswitch_25
        0x85 -> :sswitch_26
        0x86 -> :sswitch_27
        0x87 -> :sswitch_28
        0x89 -> :sswitch_29
        0x8a -> :sswitch_2a
        0x8b -> :sswitch_2b
        0x8c -> :sswitch_2c
        0x8d -> :sswitch_2d
        0x8e -> :sswitch_2e
        0x8f -> :sswitch_2f
        0x90 -> :sswitch_30
        0x91 -> :sswitch_31
        0x92 -> :sswitch_32
        0x93 -> :sswitch_33
        0x97 -> :sswitch_34
        0x99 -> :sswitch_35
        0x9a -> :sswitch_36
        0x9d -> :sswitch_37
        0x9e -> :sswitch_38
        0x9f -> :sswitch_39
        0xa0 -> :sswitch_3a
        0xa1 -> :sswitch_3b
        0xa2 -> :sswitch_3c
        0xa3 -> :sswitch_3d
        0xa4 -> :sswitch_3e
        0xc0 -> :sswitch_3f
        0xc1 -> :sswitch_40
        0xc2 -> :sswitch_41
        0xc3 -> :sswitch_42
        0xc4 -> :sswitch_43
        0xc5 -> :sswitch_44
        0xf8 -> :sswitch_45
        0xff -> :sswitch_46
    .end sparse-switch
.end method


# virtual methods
.method public getDestination()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "<%s> src: %d, dst: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v2

    if-lez v2, :cond_0

    const-string/jumbo v2, ", params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-byte v0, v4, v2

    const-string/jumbo v6, " %02X"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
