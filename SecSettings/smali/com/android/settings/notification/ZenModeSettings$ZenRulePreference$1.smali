.class Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;->this$1:Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;->this$1:Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;->this$1:Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference$1;->this$1:Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->-wrap4(Lcom/android/settings/notification/ZenModeSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
