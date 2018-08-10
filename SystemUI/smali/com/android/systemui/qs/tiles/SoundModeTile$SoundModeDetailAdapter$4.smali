.class Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$4;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSettingAllSoundMute()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->isSystemSettingAllSoundOff()Z

    move-result v0

    return v0
.end method

.method public refreshRadioButtons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    return-void
.end method
