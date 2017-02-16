.class Lcom/android/settings/LedIndicatorSettings$1;
.super Landroid/database/ContentObserver;
.source "LedIndicatorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LedIndicatorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LedIndicatorSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LedIndicatorSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LedIndicatorSettings$1;->this$0:Lcom/android/settings/LedIndicatorSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings$1;->this$0:Lcom/android/settings/LedIndicatorSettings;

    invoke-static {v1}, Lcom/android/settings/LedIndicatorSettings;->access$000(Lcom/android/settings/LedIndicatorSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_master_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings$1;->this$0:Lcom/android/settings/LedIndicatorSettings;

    invoke-static {v1}, Lcom/android/settings/LedIndicatorSettings;->access$100(Lcom/android/settings/LedIndicatorSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/LedIndicatorSettings$1;->this$0:Lcom/android/settings/LedIndicatorSettings;

    invoke-static {v1}, Lcom/android/settings/LedIndicatorSettings;->access$200(Lcom/android/settings/LedIndicatorSettings;)V

    return-void
.end method
