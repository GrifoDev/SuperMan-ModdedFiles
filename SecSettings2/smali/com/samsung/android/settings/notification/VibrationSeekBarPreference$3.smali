.class Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$3;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v2, 0xc369

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return-void
.end method
