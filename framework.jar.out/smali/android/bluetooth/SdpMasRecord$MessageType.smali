.class public final Landroid/bluetooth/SdpMasRecord$MessageType;
.super Ljava/lang/Object;
.source "SdpMasRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpMasRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageType"
.end annotation


# static fields
.field public static final EMAIL:I = 0x1

.field public static final MMS:I = 0x8

.field public static final SMS_CDMA:I = 0x4

.field public static final SMS_GSM:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
