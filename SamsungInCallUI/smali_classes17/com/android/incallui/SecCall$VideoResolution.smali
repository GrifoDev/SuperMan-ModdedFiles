.class public Lcom/android/incallui/SecCall$VideoResolution;
.super Ljava/lang/Object;
.source "SecCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoResolution"
.end annotation


# static fields
.field public static final CIF:I = 0x5

.field public static final HD720:I = 0x6

.field public static final QCIF:I = 0x1

.field public static final QVGA:I = 0x2

.field public static final QVGALAND:I = 0x7

.field public static final VGA:I = 0x3

.field public static final VGALAND:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resolution"    # I

    .prologue
    .line 530
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 531
    const-string v0, "QCIF"

    .line 545
    :goto_0
    return-object v0

    .line 532
    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 533
    const-string v0, "CIF"

    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 535
    const-string v0, "VGA"

    goto :goto_0

    .line 536
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 537
    const-string v0, "VGALAND"

    goto :goto_0

    .line 538
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 539
    const-string v0, "QVGA"

    goto :goto_0

    .line 540
    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    .line 541
    const-string v0, "QVGALAND"

    goto :goto_0

    .line 542
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 543
    const-string v0, "HD720"

    goto :goto_0

    .line 545
    :cond_6
    const-string v0, "NONE"

    goto :goto_0
.end method
