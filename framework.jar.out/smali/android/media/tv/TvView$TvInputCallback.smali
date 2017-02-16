.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .prologue
    .line 915
    return-void
.end method

.method public onConnectionFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 897
    return-void
.end method

.method public onContentAllowed(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 982
    return-void
.end method

.method public onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    .line 992
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 905
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    .line 1004
    return-void
.end method

.method public onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1019
    return-void
.end method

.method public onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .prologue
    .line 936
    return-void
.end method

.method public onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 924
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public onVideoAvailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 956
    return-void
.end method

.method public onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 948
    return-void
.end method

.method public onVideoUnavailable(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 973
    return-void
.end method
