.class Lcom/android/settings/dashboard/SummaryLoader$1;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$summary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings/dashboard/SummaryLoader;->-get1(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings/dashboard/SummaryLoader;->-get1(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->getTile(Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings/dashboard/SummaryLoader;->-get1(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyChanged(Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method
