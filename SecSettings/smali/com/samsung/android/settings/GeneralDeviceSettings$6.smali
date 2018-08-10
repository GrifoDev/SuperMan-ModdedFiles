.class Lcom/samsung/android/settings/GeneralDeviceSettings$6;
.super Ljava/lang/Object;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GeneralDeviceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$6;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$6;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$6;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-wrap0(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V

    const/4 v2, 0x1

    return v2
.end method
