.class final Lcom/android/incallui/secutils/YellowPageCallerid$1;
.super Ljava/lang/Object;
.source "YellowPageCallerid.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secutils/YellowPageCallerid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 44
    invoke-static {p2}, Lcom/sec/android/app/yellowpage/IYellowpageInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    move-result-object v0

    # setter for: Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;
    invoke-static {v0}, Lcom/android/incallui/secutils/YellowPageCallerid;->access$002(Lcom/sec/android/app/yellowpage/IYellowpageInterface;)Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    .line 45
    const-string v0, "YellowPageCallerid_Call"

    const-string v1, "bind success "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    const/4 v0, 0x0

    # setter for: Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;
    invoke-static {v0}, Lcom/android/incallui/secutils/YellowPageCallerid;->access$002(Lcom/sec/android/app/yellowpage/IYellowpageInterface;)Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    .line 51
    const-string v0, "YellowPageCallerid_Call"

    const-string v1, "bind fail "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
