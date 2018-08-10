.class final Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackConfigChangeCallbackData"
.end annotation


# instance fields
.field final mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

.field final mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/AudioManager$AudioPlaybackCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioManager$AudioPlaybackCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    iput-object p2, p0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    return-void
.end method
