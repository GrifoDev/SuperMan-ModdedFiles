.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-set5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "Status"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-set5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
