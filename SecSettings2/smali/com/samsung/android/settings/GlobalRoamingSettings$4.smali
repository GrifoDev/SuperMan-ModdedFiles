.class Lcom/samsung/android/settings/GlobalRoamingSettings$4;
.super Landroid/database/ContentObserver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const v2, 0x7f0b0e94

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const v2, 0x7f0b0e93

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
