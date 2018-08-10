.class Lcom/android/systemui/volume/SecVolumeDialogImpl$15;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get40(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set19(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$15;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap15(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
