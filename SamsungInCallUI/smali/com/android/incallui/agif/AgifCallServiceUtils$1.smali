.class final Lcom/android/incallui/agif/AgifCallServiceUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifCallServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Lcom/android/b/a/a$a;->a(Landroid/os/IBinder;)Lcom/android/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->access$002(Lcom/android/b/a/a;)Lcom/android/b/a/a;

    const-string v0, "AgifCallServiceUtils"

    const-string v1, "bind success "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->access$002(Lcom/android/b/a/a;)Lcom/android/b/a/a;

    const-string v0, "AgifCallServiceUtils"

    const-string v1, "bind fail "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
