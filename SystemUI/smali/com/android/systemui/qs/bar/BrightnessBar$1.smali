.class Lcom/android/systemui/qs/bar/BrightnessBar$1;
.super Landroid/database/ContentObserver;
.source "BrightnessBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/BrightnessBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get1(Lcom/android/systemui/qs/bar/BrightnessBar;)Landroid/content/Context;

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
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->-set1(Lcom/android/systemui/qs/bar/BrightnessBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "brightness_auto"

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v4}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get2(Lcom/android/systemui/qs/bar/BrightnessBar;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BrightnessBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange() : BRIGHTNESS_AUTO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/BrightnessBar;->-get2(Lcom/android/systemui/qs/bar/BrightnessBar;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
