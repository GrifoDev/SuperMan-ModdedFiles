.class Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
