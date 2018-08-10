.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatAction"
.end annotation


# static fields
.field public static ALL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static NONE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static ONE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->NONE:I

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->ALL:I

    const/4 v0, 0x2

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;->ONE:I

    return-void
.end method
