.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get2(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    :goto_0
    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10017d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v1, :cond_0

    const/16 v4, 0x3e8

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v5

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_4

    move v3, v5

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    return v4
.end method
