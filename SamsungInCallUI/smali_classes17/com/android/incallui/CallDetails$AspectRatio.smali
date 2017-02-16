.class public Lcom/android/incallui/CallDetails$AspectRatio;
.super Ljava/lang/Object;
.source "CallDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AspectRatio"
.end annotation


# static fields
.field public static final CIF:I = 0x1

.field public static final HD:I = 0x4

.field public static final HD_LAND:I = 0x5

.field public static final NONE:I = 0x0

.field public static final VGA:I = 0x2

.field public static final VGA_LAND:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ratio"    # I

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 148
    const-string v0, "CIF"

    .line 158
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 150
    const-string v0, "VGA"

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 152
    const-string v0, "VGA_LAND"

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 154
    const-string v0, "HD"

    goto :goto_0

    .line 155
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 156
    const-string v0, "HD_LAND"

    goto :goto_0

    .line 158
    :cond_4
    const-string v0, "NONE"

    goto :goto_0
.end method
