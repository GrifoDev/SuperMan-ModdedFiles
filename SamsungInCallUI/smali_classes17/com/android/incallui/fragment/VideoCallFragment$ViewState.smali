.class public Lcom/android/incallui/fragment/VideoCallFragment$ViewState;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# static fields
.field public static final BANNER:I = 0x4

.field public static final CAMERA_EFFECT_BANNER:I = 0x6

.field public static final FULLSCREEN:I = 0x2

.field public static final HIDE:I = 0x1

.field public static final MULTIPART:I = 0x3

.field public static final MULTIPART_BANNER:I = 0x5

.field public static final NONE:I = 0x0

.field public static final OUTGOING:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1144
    if-nez p0, :cond_0

    .line 1145
    const-string v0, "NONE"

    .line 1161
    :goto_0
    return-object v0

    .line 1146
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1147
    const-string v0, "HIDE"

    goto :goto_0

    .line 1148
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 1149
    const-string v0, "FULLSCREEN"

    goto :goto_0

    .line 1150
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 1151
    const-string v0, "MULTIPART"

    goto :goto_0

    .line 1152
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 1153
    const-string v0, "BANNER"

    goto :goto_0

    .line 1154
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 1155
    const-string v0, "MULTIPART_BANNER"

    goto :goto_0

    .line 1156
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 1157
    const-string v0, "CAMERA_EFFECT_BANNER"

    goto :goto_0

    .line 1158
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 1159
    const-string v0, "OUTGOING"

    goto :goto_0

    .line 1161
    :cond_7
    const-string v0, "KNOWN"

    goto :goto_0
.end method
