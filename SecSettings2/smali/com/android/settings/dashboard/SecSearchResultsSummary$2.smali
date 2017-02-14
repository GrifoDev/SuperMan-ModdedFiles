.class Lcom/android/settings/dashboard/SecSearchResultsSummary$2;
.super Landroid/content/BroadcastReceiver;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$2;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v2, "com.sec.android.query_by_voice"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "query"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$2;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setQueryFromOutter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
