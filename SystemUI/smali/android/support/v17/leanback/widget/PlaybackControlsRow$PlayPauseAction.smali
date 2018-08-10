.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayPauseAction"
.end annotation


# static fields
.field public static PAUSE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static PLAY:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->PLAY:I

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->PAUSE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v2, Landroid/support/v17/leanback/R$id;->lb_control_play_pause:I

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_play:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v3

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_pause:I

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    array-length v2, v0

    new-array v1, v2, [Ljava/lang/String;

    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_play:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_pause:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setLabels([Ljava/lang/String;)V

    const/16 v2, 0x55

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->addKeyCode(I)V

    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->addKeyCode(I)V

    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->addKeyCode(I)V

    return-void
.end method
