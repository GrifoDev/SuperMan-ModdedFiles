.class Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;
.super Landroid/database/ContentObserver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-get0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-get0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
