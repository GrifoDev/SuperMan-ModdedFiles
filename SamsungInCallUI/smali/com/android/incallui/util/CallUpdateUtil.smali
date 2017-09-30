.class public Lcom/android/incallui/util/CallUpdateUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;
    }
.end annotation


# static fields
.field private static final BLOCK_UPDATE_WITHIN_TOO_SHORT_TIME:I = 0x64

.field private static final BLOCK_UPDATE_WITHIN_TOO_SHORT_TIME_DELAY:I = 0x64

.field private static final UPDATE_WITH_DELAY:I = 0x65

.field private static final UPDATE_WITH_DELAY_DELAY:I = 0x64


# instance fields
.field private mCallback:Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;

.field private mClientLogTag:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/util/CallUpdateUtil$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/CallUpdateUtil$1;-><init>(Lcom/android/incallui/util/CallUpdateUtil;)V

    iput-object v0, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mClientLogTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/util/CallUpdateUtil;->mCallback:Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/CallUpdateUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/util/CallUpdateUtil;->notifyUpdateCallback()V

    return-void
.end method

.method private needToUpdateDirectly()Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v4, 0x64

    const/16 v3, 0x64

    const/16 v2, 0x65

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/util/CallUpdateUtil;->mClientLogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needToUpdateDirectly: send UPDATE_WITH_DELAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/util/CallUpdateUtil;->mClientLogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needToUpdateDirectly: remove and send UPDATE_WITH_DELAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/util/CallUpdateUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/util/CallUpdateUtil;->mClientLogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needToUpdateDirectly: send BLOCK_UPDATE_WITHIN_TOO_SHORT_TIME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyUpdateCallback()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mClientLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notifyUpdateCallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/CallUpdateUtil;->mCallback:Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;

    iget-object v1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;->updateRightNow(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/CallUpdateUtil;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/util/CallUpdateUtil;->mObject:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/incallui/util/CallUpdateUtil;->needToUpdateDirectly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/util/CallUpdateUtil;->notifyUpdateCallback()V

    :cond_0
    return-void
.end method
