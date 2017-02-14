.class Lcom/samsung/android/settings/display/SecDisplaySettings$29;
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

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->val$menu:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get10(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03ef
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
