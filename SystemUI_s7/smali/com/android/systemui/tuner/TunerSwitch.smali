.class public Lcom/android/systemui/tuner/TunerSwitch;
.super Landroid/support/v14/preference/SwitchPreference;
.source "TunerSwitch.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAction:I

.field private final mDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/systemui/R$styleable;->TunerSwitch:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mDefault:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    iget v0, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerSwitch;->setChecked(Z)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/tuner/TunerSwitch;->mDefault:Z

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz p1, :cond_0

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
