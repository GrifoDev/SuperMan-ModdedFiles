.class Lcom/android/incallui/StatusBarNotifier$1$1;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/StatusBarNotifier$1;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/StatusBarNotifier$1;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$1$1;->this$1:Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1$1;->this$1:Lcom/android/incallui/StatusBarNotifier$1;

    # invokes: Lcom/android/incallui/StatusBarNotifier$1;->fire()V
    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier$1;->access$000(Lcom/android/incallui/StatusBarNotifier$1;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method
