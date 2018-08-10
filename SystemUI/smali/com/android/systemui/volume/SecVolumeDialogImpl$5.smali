.class Lcom/android/systemui/volume/SecVolumeDialogImpl$5;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get42(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get53()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set25(J)J

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "VKFM"

    if-eqz p2, :cond_2

    const-string/jumbo v3, "ON: "

    :goto_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get53()J

    move-result-wide v4

    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get42(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get54()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set26(J)J

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "OFF: "

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get54()J

    move-result-wide v4

    goto :goto_2
.end method
