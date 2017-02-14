.class Lcom/samsung/android/settings/SettingsListPreference$1;
.super Ljava/lang/Object;
.source "SettingsListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SettingsListPreference;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SettingsListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SettingsListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/SettingsListPreference;->-wrap0(Lcom/samsung/android/settings/SettingsListPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsListPreference$1;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
