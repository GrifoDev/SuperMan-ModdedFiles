.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field final synthetic val$mgr:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v1, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-set0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iput-object v1, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    const v1, 0x7f0b19c9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v2, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;->this$1:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1
.end method
