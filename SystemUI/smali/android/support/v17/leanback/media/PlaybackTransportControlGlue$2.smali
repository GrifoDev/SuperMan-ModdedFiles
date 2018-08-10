.class Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;
.super Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
