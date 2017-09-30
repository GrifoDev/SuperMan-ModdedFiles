.class Lcom/android/incallui/secrcs/RcsCapaObserver$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsCapaObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsCapaObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsCapaObserver$1;->this$0:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsCapaObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsCapaObserver::onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsCapaObserver$1;->this$0:Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->updateUI()V

    return-void
.end method
