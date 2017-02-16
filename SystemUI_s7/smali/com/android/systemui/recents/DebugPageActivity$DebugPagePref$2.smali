.class Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;
.super Ljava/lang/Object;
.source "DebugPageActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addDebugFlags()V
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

    iput-object p1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pref_key_debug_"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    iget-object v3, v3, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, p2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap0(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    const/4 v4, 0x0

    invoke-static {v3, p1, v1, v4}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap3(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    :cond_0
    const/4 v3, 0x0

    return v3
.end method
