.class Lcom/android/systemui/qs/QSBrightnessView$1;
.super Landroid/database/ContentObserver;
.source "QSBrightnessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBrightnessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBrightnessView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBrightnessView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSBrightnessView$1;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSBrightnessView$1;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView$1;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBrightnessView;->-get0(Lcom/android/systemui/qs/QSBrightnessView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, -0x2

    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/systemui/qs/QSBrightnessView;->-set0(Lcom/android/systemui/qs/QSBrightnessView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView$1;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSBrightnessView;->-get0(Lcom/android/systemui/qs/QSBrightnessView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v3, "brightness_auto"

    iget-object v4, p0, Lcom/android/systemui/qs/QSBrightnessView$1;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-static {v4}, Lcom/android/systemui/qs/QSBrightnessView;->-get1(Lcom/android/systemui/qs/QSBrightnessView;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "QSBrightnessView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange BRIGHTNESS_AUTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView$1;->this$0:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSBrightnessView;->-get1(Lcom/android/systemui/qs/QSBrightnessView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
