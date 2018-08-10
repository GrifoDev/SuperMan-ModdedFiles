.class Lcom/samsung/android/settings/PrivacySettings$5;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/PrivacySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$5;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings$5;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/PrivacySettings;->-wrap0(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_silent_auto_reset"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings$5;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/PrivacySettings;->-wrap8(Lcom/samsung/android/settings/PrivacySettings;Z)V

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
