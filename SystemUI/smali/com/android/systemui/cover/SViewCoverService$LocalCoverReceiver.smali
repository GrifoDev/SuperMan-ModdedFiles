.class Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalCoverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SViewCoverService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/cover/SViewCoverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/cover/SViewCoverService;Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;-><init>(Lcom/android/systemui/cover/SViewCoverService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CoverUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.android.systemui.cover.RETRY_GET_STATUS_BAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v1}, Lcom/android/systemui/cover/SViewCoverService;->-get1(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService$LocalCoverReceiver;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v1}, Lcom/android/systemui/cover/SViewCoverService;->-wrap1(Lcom/android/systemui/cover/SViewCoverService;)V

    :cond_0
    return-void
.end method
