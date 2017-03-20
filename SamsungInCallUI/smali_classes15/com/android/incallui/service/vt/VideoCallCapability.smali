.class public Lcom/android/incallui/service/vt/VideoCallCapability;
.super Ljava/lang/Object;
.source "VideoCallCapability.java"


# static fields
.field public static CALL_STATE_LABEL:I

.field public static CONFERENCE_ADD_USER:I

.field public static EARLY_MEDIA:I

.field public static EPDG_CALL:I

.field public static HANDOVER_NOTIFICATION:I

.field public static NOTHING:I

.field public static PRIVACY_CAPTURE:I

.field public static RX_HELD:I

.field public static SUPPORT_CVO:I

.field public static THREE_WIDGET:I

.field public static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    .line 24
    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    .line 25
    const/16 v0, 0x8

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EARLY_MEDIA:I

    .line 26
    const/16 v0, 0x10

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    .line 27
    const/16 v0, 0x20

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    .line 28
    const/16 v0, 0x40

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    .line 29
    const/16 v0, 0x80

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    .line 30
    const/16 v0, 0x100

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    .line 31
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I)V
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 38
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    .line 39
    return-void
.end method

.method public static can(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 34
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    and-int/2addr v0, p0

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dump()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capability : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCapability;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->config(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    if-ne v1, v2, :cond_1

    .line 52
    const-string v1, "NOTHING"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    :cond_1
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-string v1, "RX_HELD"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 57
    :cond_2
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    const-string v1, "SUPPORT_CVO"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 60
    :cond_3
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const-string v1, "CONFERENCE_ADD_USER"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 63
    :cond_4
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->EARLY_MEDIA:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    const-string v1, "EARLY_MEDIA"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 66
    :cond_5
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 67
    const-string v1, "HANDOVER_NOTIFICATION"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 69
    :cond_6
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    const-string v1, "CALL_STATE_LABEL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 72
    :cond_7
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 73
    const-string v1, "EPDG_CALL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 75
    :cond_8
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "PRIVACY_CAPTURE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    return-void
.end method

.method public static remove(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 42
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    .line 43
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    .line 47
    return-void
.end method
