.class public Lcom/sec/ims/volte2/data/ImsCallInfo$CallType;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/ImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallType"
.end annotation


# static fields
.field public static final CALL_TYPE_AUDIO:I = 0x1

.field public static final CALL_TYPE_AUDIO_CONFERENCE:I = 0x5

.field public static final CALL_TYPE_E911_AUDIO:I = 0x7

.field public static final CALL_TYPE_E911_VIDEO:I = 0x8

.field public static final CALL_TYPE_RTT_AUDIO:I = 0xe

.field public static final CALL_TYPE_RTT_VOICE:I = 0xf

.field public static final CALL_TYPE_TTY_FULL:I = 0x9

.field public static final CALL_TYPE_TTY_HCO:I = 0xa

.field public static final CALL_TYPE_TTY_VCO:I = 0xb

.field public static final CALL_TYPE_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_USSD:I = 0xc

.field public static final CALL_TYPE_VIDEO:I = 0x2

.field public static final CALL_TYPE_VIDEO_CONFERENCE:I = 0x6

.field public static final CALL_TYPE_VIDEO_SHARE_RX:I = 0x4

.field public static final CALL_TYPE_VIDEO_SHARE_TX:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
