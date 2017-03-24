.class Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;
.super Ljava/lang/Object;
.source "DebugPageActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addEtcItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings.action.EXTRA_SETTINGS"

    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/systemui/tuner/TunerActivity;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "SystemUI Tuner is not supported."

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    return v6
.end method
