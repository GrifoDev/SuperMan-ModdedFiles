.class Lcom/android/settings/notification/ZenModeSettings$2;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->updateAutomaticRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$2;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$2;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettings;->-get0(Lcom/android/settings/notification/ZenModeSettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$2;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0xac

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$2;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettings;->-wrap3(Lcom/android/settings/notification/ZenModeSettings;)V

    const/4 v0, 0x1

    return v0
.end method
