.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;
.super Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;
.source "PlaybackTransportRowPresenter.java"


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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilitySeekBackward()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onBackward()Z

    move-result v0

    return v0
.end method

.method public onAccessibilitySeekForward()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onForward()Z

    move-result v0

    return v0
.end method
