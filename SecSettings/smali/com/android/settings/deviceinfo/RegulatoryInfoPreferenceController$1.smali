.class Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController$1;
.super Ljava/lang/Object;
.source "RegulatoryInfoPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;->-get0(Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->showRegulatoryInfo(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
