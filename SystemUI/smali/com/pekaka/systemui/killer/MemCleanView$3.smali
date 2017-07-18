.class Lcom/pekaka/systemui/killer/MemCleanView$3;
.super Landroid/content/BroadcastReceiver;
.source "MemCleanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pekaka/systemui/killer/MemCleanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pekaka/systemui/killer/MemCleanView;


# direct methods
.method constructor <init>(Lcom/pekaka/systemui/killer/MemCleanView;)V
    .locals 0

    iput-object p1, p0, Lcom/pekaka/systemui/killer/MemCleanView$3;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView$3;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pekaka/systemui/killer/MemCleanView;->access$400(Lcom/pekaka/systemui/killer/MemCleanView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pekaka/systemui/killer/MemCleanView$3;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/pekaka/systemui/killer/MemCleanView;->access$400(Lcom/pekaka/systemui/killer/MemCleanView;Z)V

    goto :goto_0
.end method
