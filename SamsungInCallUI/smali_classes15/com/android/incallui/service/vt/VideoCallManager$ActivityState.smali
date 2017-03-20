.class public Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityState"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field private static final PAUSED:I = 0x4

.field private static final RESUMED:I = 0x3

.field private static final STARTED:I = 0x2

.field private static final STOPPED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 678
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 679
    const-string v0, "STARTED"

    .line 687
    :goto_0
    return-object v0

    .line 680
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 681
    const-string v0, "RESUMED"

    goto :goto_0

    .line 682
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 683
    const-string v0, "PAUSED"

    goto :goto_0

    .line 684
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    .line 685
    const-string v0, "STOPPED"

    goto :goto_0

    .line 687
    :cond_3
    const-string v0, "NONE"

    goto :goto_0
.end method
