.class Lcom/android/systemui/volume/SecVolumeDialogImpl$19;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->showVolumeLimiterDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$19;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isClearCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get55()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set27(J)J

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$19;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "FVLM"

    const-string/jumbo v3, "CANCEL: "

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get55()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
