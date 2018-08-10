.class public final enum Landroid/telephony/SmsMessage$MessageTpPid;
.super Ljava/lang/Enum;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageTpPid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/SmsMessage$MessageTpPid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string/jumbo v1, "MSG_PID_DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string/jumbo v1, "MSG_PID_SMS_HANDLED"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;

    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string/jumbo v1, "MSG_PID_LBS_PORT"

    const/16 v2, 0x51

    invoke-direct {v0, v1, v5, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string/jumbo v1, "MSG_PID_APPLICATION_PORT"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v6, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/telephony/SmsMessage$MessageTpPid;

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v6

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->$VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    return-void
.end method

.method public static fromInt(I)Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 5

    invoke-static {}, Landroid/telephony/SmsMessage$MessageTpPid;->values()[Landroid/telephony/SmsMessage$MessageTpPid;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 1

    const-class v0, Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsMessage$MessageTpPid;

    return-object v0
.end method

.method public static values()[Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 1

    sget-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->$VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    return v0
.end method
