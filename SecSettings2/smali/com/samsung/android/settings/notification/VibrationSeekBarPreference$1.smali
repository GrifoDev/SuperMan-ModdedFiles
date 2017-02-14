.class Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VibrationSeekBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->setVibrationIntensity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iget v1, v1, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->pattern:I

    sget-object v2, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return-void
.end method
