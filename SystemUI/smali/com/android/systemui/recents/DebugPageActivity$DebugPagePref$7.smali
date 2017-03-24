.class Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;
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

    iput-object p1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v1}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RecentsFullscreenHelpPopup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v1}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RecentsSplitscreenHelpPopup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v1}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Update prefence to enable help popup"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v4
.end method
