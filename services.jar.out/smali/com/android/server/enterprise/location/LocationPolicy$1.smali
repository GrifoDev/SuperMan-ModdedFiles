.class Lcom/android/server/enterprise/location/LocationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/location/LocationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/location/LocationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/location/LocationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy$1;->this$0:Lcom/android/server/enterprise/location/LocationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy$1;->this$0:Lcom/android/server/enterprise/location/LocationPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->-wrap0(Lcom/android/server/enterprise/location/LocationPolicy;I)V

    :cond_0
    return-void
.end method
