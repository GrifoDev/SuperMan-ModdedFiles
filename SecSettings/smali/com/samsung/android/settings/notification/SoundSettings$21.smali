.class Lcom/samsung/android/settings/notification/SoundSettings$21;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->setZenMode(ILandroid/net/Uri;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b01d3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v1, :cond_1

    const/16 v2, 0x3e8

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
