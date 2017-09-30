.class public Lcom/android/incallui/service/SecInCallService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;
    }
.end annotation


# static fields
.field private static final MSG_ANSWER_RINGING_CALL:I = 0x3

.field private static final MSG_HANDLE_CALL_SESSION_MESSAGE:I = 0x7

.field private static final MSG_POST_DIAL_PAUSE:I = 0x4

.field private static final MSG_POST_DIAL_PAUSE_COMPLETE:I = 0x5

.field private static final MSG_RECEIVED_MESSAGE:I = 0x6

.field private static final MSG_SET_SEC_IN_CALL_ADAPTER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SecInCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/incallui/service/SecInCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/SecInCallService$1;-><init>(Lcom/android/incallui/service/SecInCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;-><init>(Lcom/android/incallui/service/SecInCallService;Lcom/android/incallui/service/SecInCallService$1;)V

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->clearSecInCallAdapter()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
