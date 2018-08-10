.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;
.super Landroid/support/v17/leanback/widget/Action;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreActions"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_more_actions:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/support/v17/leanback/R$string;->lb_playback_controls_more_actions:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;->setLabel1(Ljava/lang/CharSequence;)V

    return-void
.end method
