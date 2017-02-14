.class Lcom/android/settings/AppListPreferenceWithSettings$1;
.super Ljava/lang/Object;
.source "AppListPreferenceWithSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppListPreferenceWithSettings;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppListPreferenceWithSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AppListPreferenceWithSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-virtual {v1}, Lcom/android/settings/AppListPreferenceWithSettings;->loggingSettingsIcon()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-static {v1}, Lcom/android/settings/AppListPreferenceWithSettings;->-get0(Lcom/android/settings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-virtual {v1}, Lcom/android/settings/AppListPreferenceWithSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
