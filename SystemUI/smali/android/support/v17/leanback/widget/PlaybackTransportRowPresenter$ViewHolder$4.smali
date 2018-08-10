.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    return v2

    :sswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    return v0

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onBackward()Z

    :cond_0
    return v1

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onForward()Z

    :cond_1
    return v1

    :sswitch_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->stopSeek(Z)V

    :cond_3
    return v1

    :sswitch_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SeekBar;->isAccessibilityFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->stopSeek(Z)V

    :cond_5
    return v1

    :cond_6
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x42 -> :sswitch_3
        0x45 -> :sswitch_1
        0x51 -> :sswitch_2
        0x59 -> :sswitch_1
        0x5a -> :sswitch_2
        0x6f -> :sswitch_4
    .end sparse-switch
.end method
