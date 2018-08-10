.class Lcom/android/systemui/volume/VolumeDialogImpl$11;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get15(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$11;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
