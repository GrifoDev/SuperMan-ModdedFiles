.class Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;
.super Landroid/os/AsyncTask;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PercentTextUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->-get0(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "display_battery_percentage"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setShowBatteryPercentInStatusBar(I)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_BatteryMeterView$PercentTextUpdateTask_19011()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->-wrap0(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v1, Lcom/android/systemui/-$Lambda$4tUDcZenbKJmMR5fh9d0ZiDE2a0;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$Lambda$4tUDcZenbKJmMR5fh9d0ZiDE2a0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView$PercentTextUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
