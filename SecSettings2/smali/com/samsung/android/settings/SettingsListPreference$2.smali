.class Lcom/samsung/android/settings/SettingsListPreference$2;
.super Ljava/lang/Object;
.source "SettingsListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SettingsListPreference;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsListPreference$2;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference$2;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference$2;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsListPreference$2;->this$0:Lcom/samsung/android/settings/SettingsListPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
