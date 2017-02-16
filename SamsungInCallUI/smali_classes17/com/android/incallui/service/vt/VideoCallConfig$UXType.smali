.class public Lcom/android/incallui/service/vt/VideoCallConfig$UXType;
.super Ljava/lang/Object;
.source "VideoCallConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UXType"
.end annotation


# static fields
.field public static final CHN:I = 0x3

.field public static final GLOBAL:I = 0x0

.field public static final JPN:I = 0x4

.field public static final KOR:I = 0x1

.field public static final USA:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    # getter for: Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->access$000()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 70
    const-string v0, " UXType : KOR "

    .line 78
    :goto_0
    return-object v0

    .line 71
    :cond_0
    # getter for: Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->access$000()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 72
    const-string v0, " UXType : USA "

    goto :goto_0

    .line 73
    :cond_1
    # getter for: Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->access$000()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 74
    const-string v0, " UXType : CHN "

    goto :goto_0

    .line 75
    :cond_2
    # getter for: Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->access$000()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 76
    const-string v0, " UXType : JPN "

    goto :goto_0

    .line 78
    :cond_3
    const-string v0, " UXType : GLOBAL "

    goto :goto_0
.end method
