.class Lcom/samsung/android/settings/display/SecDisplaySettings$28;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

.field final synthetic val$accessibility:I

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    iput p3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03ef
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b03f0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0b03f0
        :pswitch_3
    .end packed-switch
.end method
