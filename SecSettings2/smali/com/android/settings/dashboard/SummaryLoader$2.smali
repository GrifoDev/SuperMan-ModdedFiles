.class Lcom/android/settings/dashboard/SummaryLoader$2;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SummaryLoader;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;

.field final synthetic val$filter:Landroid/content/IntentFilter;

.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->val$receiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->val$filter:Landroid/content/IntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v0}, Lcom/android/settings/dashboard/SummaryLoader;->-get2(Lcom/android/settings/dashboard/SummaryLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v0}, Lcom/android/settings/dashboard/SummaryLoader;->-get3(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v0}, Lcom/android/settings/dashboard/SummaryLoader;->-get0(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->val$receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$2;->val$filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
