.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->onProgressBarClicked(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    return-void
.end method
