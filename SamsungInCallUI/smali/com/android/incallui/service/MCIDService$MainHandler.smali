.class Lcom/android/incallui/service/MCIDService$MainHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/MCIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/MCIDService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/MCIDService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/service/MCIDService$MainHandler;->this$0:Lcom/android/incallui/service/MCIDService;

    invoke-virtual {p1}, Lcom/android/incallui/service/MCIDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/MCIDService$MainHandler;->this$0:Lcom/android/incallui/service/MCIDService;

    invoke-static {v0, p1}, Lcom/android/incallui/service/MCIDService;->access$100(Lcom/android/incallui/service/MCIDService;Landroid/os/Message;)V

    return-void
.end method
