.class public Lcom/android/incallui/SecCall$VideoResolution;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "QCIF"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const-string v0, "CIF"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "VGA"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "VGALAND"

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const-string v0, "QVGA"

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const-string v0, "QVGALAND"

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "HD720"

    goto :goto_0

    :cond_6
    const-string v0, "NONE"

    goto :goto_0
.end method
