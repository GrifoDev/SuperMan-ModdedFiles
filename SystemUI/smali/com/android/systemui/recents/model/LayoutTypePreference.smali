.class public Lcom/android/systemui/recents/model/LayoutTypePreference;
.super Ljava/lang/Object;
.source "LayoutTypePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/LayoutTypePreference;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "LayoutTypePreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/LayoutTypePreference;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public restoreLayoutType()I
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/model/LayoutTypePreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/LayoutTypePreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ViewType"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public saveLayoutType(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/model/LayoutTypePreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ViewType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
