.class Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-get0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_information_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_icon_label"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_list_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_link_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
