.class Lcom/android/systemui/qs/QSSecurityFooter$H;
.super Landroid/os/Handler;
.source "QSSecurityFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$H;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v1, "handleRefreshState"

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->-wrap1(Lcom/android/systemui/qs/QSSecurityFooter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    const-string/jumbo v1, "handleClick"

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->-wrap0(Lcom/android/systemui/qs/QSSecurityFooter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "QSSecurityFooter"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->-get7(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/qs/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
