.class Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$tempMuteSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/widget/Switch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->val$tempMuteSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->val$tempMuteSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMuteInterval(I)V

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "4108"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_0
.end method
