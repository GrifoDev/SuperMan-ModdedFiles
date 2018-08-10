.class Lcom/android/settings/SettingsActivity$19;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->inflateMainScreenSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$19;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 3

    const-string/jumbo v1, "initMainScreenSearchView"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$19;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, p1}, Lcom/android/settings/SettingsActivity;->-wrap2(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$19;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.mobileservice"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "loadProfileImage"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$19;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-wrap3(Lcom/android/settings/SettingsActivity;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$19;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get4(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0689

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
