.class public Lcom/android/incallui/richscreen/RichCallScreenUtils;
.super Ljava/lang/Object;


# static fields
.field public static final CLEAN_DATA:Ljava/lang/String; = "9449040000"

.field public static CallingNumber:Ljava/lang/String; = null

.field public static Cid:Ljava/lang/String; = null

.field public static final DISCONNECTED_VOICE_CALL:Ljava/lang/String; = "1140020000"

.field public static Greeting:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "RichCallScreenUtils"

.field public static LoginString:Ljava/lang/String; = null

.field public static final NEW_RINING_VOICE_CALL:Ljava/lang/String; = "1220018000"

.field public static final OUTGING_OR_INCOMING_VOICE_CALL:Ljava/lang/String; = "1110000000"

.field public static PhoneNumberLocator:Ljava/lang/String;

.field public static SourceType:Ljava/lang/String;

.field public static URL:Ljava/lang/String;

.field public static bCollectSuccess:Z

.field public static bGetObjSuccess:Z

.field public static bInitSuccess:Z

.field public static bLoginSuccess:Z

.field public static collectResult:Lcom/cmdm/control/util/client/ResultEntity;

.field public static downloadResult:Lcom/cmdm/control/util/client/ResultEntity;

.field public static id:Ljava/lang/String;

.field public static initResult:Lcom/cmdm/control/util/client/ResultEntity;

.field public static loginResult:Lcom/cmdm/control/util/client/ResultEntity;

.field private static mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

.field public static mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

.field public static mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

.field public static result:Lcom/cmdm/control/util/client/ResultUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/rcs/bean/RichScrnShowingObject;",
            ">;"
        }
    .end annotation
.end field

.field private static sRichCallScreenUtils:Lcom/android/incallui/richscreen/RichCallScreenUtils;


# instance fields
.field myhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->downloadResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bInitSuccess:Z

    sput-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bLoginSuccess:Z

    sput-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bGetObjSuccess:Z

    sput-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bCollectSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/RichCallScreenUtils$4;-><init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->myhandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/richscreen/RichCallScreenUtils;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->sRichCallScreenUtils:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v0}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->sRichCallScreenUtils:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    :cond_0
    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->sRichCallScreenUtils:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    return-object v0
.end method


# virtual methods
.method public CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "RichCallScreenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CollectRichScrnObj sourceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;-><init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getGetTokenService()Lcom/android/incallui/richscreen/GetTokenService;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

    return-object v0
.end method

.method public getRichCallScreenPersonObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "RichCallScreenUtils"

    const-string v1, "getRichCallScreenPersonObject "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;-><init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setGetTokenService(Lcom/android/incallui/richscreen/GetTokenService;)V
    .locals 0

    sput-object p1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

    return-void
.end method

.method public startDownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "RichCallScreenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadRichScrnObj number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;-><init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
