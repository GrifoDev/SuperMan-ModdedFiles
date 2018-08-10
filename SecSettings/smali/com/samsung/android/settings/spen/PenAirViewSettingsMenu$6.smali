.class Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$6;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-get0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-get1(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
