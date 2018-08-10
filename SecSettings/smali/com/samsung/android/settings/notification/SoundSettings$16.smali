.class Lcom/samsung/android/settings/notification/SoundSettings$16;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$16;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$16;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$16;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0188

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$16;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
