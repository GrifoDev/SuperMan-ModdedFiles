.class public Lcom/android/incallui/service/vt/VideoCallCapability;
.super Ljava/lang/Object;
.source "VideoCallCapability.java"


# static fields
.field public static CALL_STATE_LABEL:I

.field public static CONFERENCE_ADD_USER:I

.field public static EARLY_MEDIA:I

.field public static EPDG_CALL:I

.field public static HANDOVER_NOTIFICATION:I

.field public static MULTITASKING_PIP:I

.field public static NOTHING:I

.field public static PRIVACY_CAPTURE:I

.field public static RX_HELD:I

.field public static SUPPORT_CVO:I

.field public static THREE_WIDGET:I

.field public static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    const/16 v0, 0x8

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EARLY_MEDIA:I

    const/16 v0, 0x10

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    const/16 v0, 0x20

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    const/16 v0, 0x40

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    const/16 v0, 0x80

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    const/16 v0, 0x100

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    const/16 v0, 0x200

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->MULTITASKING_PIP:I

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I)V
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    return-void
.end method

.method public static can(I)Z
    .locals 2

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

    return-void
.end method

.method public static getString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    if-ne v1, v2, :cond_1

    const-string v1, "NOTHING"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RX_HELD"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SUPPORT_CVO"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CONFERENCE_ADD_USER"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->EARLY_MEDIA:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "EARLY_MEDIA"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_5
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HANDOVER_NOTIFICATION"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_6
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CALL_STATE_LABEL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_7
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "EPDG_CALL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_8
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PRIVACY_CAPTURE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static remove(I)V
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    return-void
.end method

.method public static reset()V
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->NOTHING:I

    sput v0, Lcom/android/incallui/service/vt/VideoCallCapability;->mType:I

    return-void
.end method
