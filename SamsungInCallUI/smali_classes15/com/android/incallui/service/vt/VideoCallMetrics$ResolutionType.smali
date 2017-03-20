.class public Lcom/android/incallui/service/vt/VideoCallMetrics$ResolutionType;
.super Ljava/lang/Object;
.source "VideoCallMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolutionType"
.end annotation


# static fields
.field public static final HD:I = 0x2

.field public static final NONE:I = 0x0

.field public static final VGA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 644
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 645
    const-string v0, "VGA"

    .line 649
    :goto_0
    return-object v0

    .line 646
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 647
    const-string v0, "HD"

    goto :goto_0

    .line 649
    :cond_1
    const-string v0, "NONE"

    goto :goto_0
.end method
