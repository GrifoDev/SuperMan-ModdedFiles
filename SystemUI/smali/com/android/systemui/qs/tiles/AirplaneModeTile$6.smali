.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_CMCC_POPUP:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tw_globalactions_dont_show_again"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "4248"

    invoke-static {v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "DoNotshowAgainAirplaneModeOn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "DoNotshowAgainAirplaneModeOn"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
