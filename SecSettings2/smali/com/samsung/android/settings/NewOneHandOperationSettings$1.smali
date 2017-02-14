.class Lcom/samsung/android/settings/NewOneHandOperationSettings$1;
.super Landroid/database/ContentObserver;
.source "NewOneHandOperationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
