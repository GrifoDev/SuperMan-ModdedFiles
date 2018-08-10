.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$ShuffleAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShuffleAction"
.end annotation


# static fields
.field public static OFF:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static ON:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ShuffleAction;->OFF:I

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$ShuffleAction;->ON:I

    return-void
.end method
