.class Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    .prologue
    .line 4862
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;->this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4865
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4866
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "isChecked"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4867
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;->this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 4868
    const/high16 v3, 0x10000000

    .line 4869
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    .line 4867
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4863
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4870
    :catch_0
    move-exception v6

    .line 4871
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "RemoteViews"

    const-string/jumbo v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
