.class public interface abstract Lcom/android/systemui/settings/ToggleSlider;
.super Ljava/lang/Object;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$Listener;
    }
.end annotation


# virtual methods
.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public abstract setDualColorSlider()V
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
.end method

.method public abstract setValue(I)V
.end method

.method public abstract updateHighBrightnessMode(I)V
.end method

.method public abstract updateOutdoorMode(I)V
.end method

.method public abstract updateStrainAlertDialog(I)V
.end method
