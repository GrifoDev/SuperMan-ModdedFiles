.class public Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/scp/TADriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final BAD_APDU:I = 0x4

.field public static final BAD_ARGUMENTS:I = 0x2

.field public static final BAD_TLV:I = 0x3

.field public static final CHANNEL_CONSTRUCTED:I = 0x6

.field public static final CHANNEL_NOT_EXIST:I = 0x7

.field public static final ENCRYPTION_FAILED:I = 0x24

.field public static final FAILED_APDU:I = 0x27

.field public static final FORWARD_APDU:I = 0x5

.field public static final GENERAL_ERROR:I = 0x1

.field public static final GEN_APDU_FAILED:I = 0xf

.field public static final GEN_IV_FAILED:I = 0x23

.field public static final GEN_MAC_FAILED:I = 0x25

.field public static final GEN_SHS_FAILED:I = 0x17

.field public static final INTERNAL_ERROR:I = 0xb

.field public static final INVALID_MAC:I = 0x26

.field public static final INVALID_PADDING:I = 0x28

.field public static final INVALID_RECEIPT:I = 0x22

.field public static final INVALID_SD_CERT:I = 0x21

.field public static final KEY_GEN_FAILED:I = 0x16

.field public static final NO_CA_CERT:I = 0x11

.field public static final NO_CURVE_SUPP:I = 0x14

.field public static final NO_DH_PARAM:I = 0x13

.field public static final NO_MEMORY:I = 0x9

.field public static final NO_OCE_KEY:I = 0x15

.field public static final NO_SD_CERT:I = 0x12

.field public static final PROTOCOL_ERROR:I = 0x8

.field public static final SUCCESS:I = 0x0

.field public static final TZ_APP_CONN_FAILED:I = 0xf0

.field public static final UNKNOWN_STATE:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
