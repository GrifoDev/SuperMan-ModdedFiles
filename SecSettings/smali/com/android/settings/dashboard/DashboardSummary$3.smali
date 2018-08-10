.class Lcom/android/settings/dashboard/DashboardSummary$3;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->initSuggetion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "init suggestion doInBack"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getSuggestion()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->-set3(Lcom/android/settings/dashboard/DashboardSummary;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method
