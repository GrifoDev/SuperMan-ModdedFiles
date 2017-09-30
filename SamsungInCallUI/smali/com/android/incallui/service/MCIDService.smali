.class public Lcom/android/incallui/service/MCIDService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/MCIDService$MainHandler;
    }
.end annotation


# static fields
.field private static final LARGEST_MSG_ID:I = 0x1

.field private static final ON_UPDATE_MCID_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/phone/IMCIDService$Stub;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/service/MCIDService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/MCIDService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/incallui/service/MCIDService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MCIDService$1;-><init>(Lcom/android/incallui/service/MCIDService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MCIDService;->mBinder:Lcom/android/phone/IMCIDService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/MCIDService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/MCIDService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/MCIDService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/MCIDService;->executeMessage(Landroid/os/Message;)V

    return-void
.end method

.method private executeMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/android/incallui/service/MCIDService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot handle message larger than LARGEST_MSG_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/incallui/util/PhotoringUtil;->convertToPhotoringMTState(I)Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/MCIDService;->mBinder:Lcom/android/phone/IMCIDService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Lcom/android/incallui/service/MCIDService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/android/incallui/service/MCIDService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/MCIDService$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/MCIDService$MainHandler;-><init>(Lcom/android/incallui/service/MCIDService;)V

    iput-object v0, p0, Lcom/android/incallui/service/MCIDService;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
