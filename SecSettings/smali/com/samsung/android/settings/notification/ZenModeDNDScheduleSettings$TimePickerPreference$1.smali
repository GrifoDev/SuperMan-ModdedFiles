.class Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeDNDScheduleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

.field final synthetic val$mgr:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v2, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-set0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    iput-object v2, v1, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->isAdded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v3, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x1

    return v1
.end method
