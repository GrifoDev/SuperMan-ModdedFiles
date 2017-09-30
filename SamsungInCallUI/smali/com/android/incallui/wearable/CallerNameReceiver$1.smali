.class Lcom/android/incallui/wearable/CallerNameReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/wearable/CallerNameReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/wearable/CallerNameReceiver;


# direct methods
.method constructor <init>(Lcom/android/incallui/wearable/CallerNameReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/wearable/CallerNameReceiver$1;->this$0:Lcom/android/incallui/wearable/CallerNameReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/wearable/CallerNameReceiver$1;->this$0:Lcom/android/incallui/wearable/CallerNameReceiver;

    iget-object v1, p0, Lcom/android/incallui/wearable/CallerNameReceiver$1;->this$0:Lcom/android/incallui/wearable/CallerNameReceiver;

    iget-object v1, v1, Lcom/android/incallui/wearable/CallerNameReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/wearable/CallerNameReceiver;->broadcastCallName(Landroid/content/Context;)V

    return-void
.end method
