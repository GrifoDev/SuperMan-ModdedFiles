.class Lcom/android/systemui/pip/tv/PipManager$3;
.super Landroid/content/BroadcastReceiver;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$3;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$3;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3, v1}, Lcom/android/systemui/pip/tv/PipManager;->-wrap4(Lcom/android/systemui/pip/tv/PipManager;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
