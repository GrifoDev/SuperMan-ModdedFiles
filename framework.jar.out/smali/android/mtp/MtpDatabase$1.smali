.class Landroid/mtp/MtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    const-string/jumbo v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/mtp/MtpDatabase;->-set1(Landroid/mtp/MtpDatabase;I)I

    .line 146
    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, "newLevel":I
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-get0(Landroid/mtp/MtpDatabase;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2, v1}, Landroid/mtp/MtpDatabase;->-set0(Landroid/mtp/MtpDatabase;I)I

    .line 149
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v2

    .line 152
    const/16 v3, 0x5001

    .line 151
    invoke-virtual {v2, v3}, Landroid/mtp/MtpServer;->sendDevicePropertyChanged(I)V

    .line 142
    .end local v1    # "newLevel":I
    :cond_0
    return-void
.end method
