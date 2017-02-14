.class public Lcom/samsung/android/content/clipboard/SemClipboardManager;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/SemClipboardManager$1;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$ClipboardEvent;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$Type;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.ADD_CLIP"

.field public static final ACTION_CLIPBOARD_CLOSED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_CLOSED"

.field public static final ACTION_CLIPBOARD_OPENED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_OPENED"

.field public static final ACTION_DISMISS_CLIPBOARD:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.DISMISS_CLIPBOARD"

.field public static final ACTION_REMOVE_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

.field public static final EXTRA_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field public static final EXTRA_NO_TOAST:Ljava/lang/String; = "noToast"

.field public static final EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "SemClipboardManager"

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsFiltered:Z

.field private mIsMaximumSize:Z

.field private final mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

.field private mOnClipboardEventServiceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/content/clipboard/SemClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mSetDataHandler:Landroid/os/Handler;

.field private mTypeId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/content/clipboard/SemClipboardManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->notifyEvent(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_SET_DATA:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->FAIL_SET_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_AND_SAVE_BITMAP:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->PROTECTED_DATA_MAX:I

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    iput v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "no knox"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private add(Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZI)I
    .locals 6

    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v3, "SemClipboardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "failed making file descriptor!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sendResult(ZI)V

    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sendResult(ZI)V

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->closeParcelFileDescriptor()V

    :goto_1
    return v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, p1, v4, p5}, Landroid/sec/clipboard/IClipboardService;->setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, p1, v4, p5}, Landroid/sec/clipboard/IClipboardService;->setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v2

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I
    .locals 8

    const/high16 v4, 0x20000

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "addData"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string/jumbo v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addData - Fail~ Service is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p2, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->add(Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZI)I

    move-result v0

    return v0

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p2, v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v4, :cond_6

    iput-boolean v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    :cond_7
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v1

    :cond_0
    const-string/jumbo v1, "semclipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "Failed to get semclipboard service."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v1
.end method

.method private getUserId()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not enabled! from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 14

    const/4 v13, 0x0

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    :sswitch_0
    move-object v8, p1

    check-cast v8, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v5, 0x0

    const/high16 v10, 0x38000000

    :try_start_0
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v5, 0x0

    const/high16 v10, 0x38000000

    :try_start_1
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v13

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v13

    :cond_1
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_2
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no bitmap file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_4
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no extra bitmap file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    move-object v7, p1

    check-cast v7, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_6

    :cond_5
    invoke-virtual {v3, v7}, Landroid/sec/clipboard/util/FileHelper;->setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    const/high16 v10, 0x38000000

    :try_start_2
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v13

    :cond_7
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_8
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no first image file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    move-object v9, p1

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_a

    :cond_9
    invoke-virtual {v3, v9}, Landroid/sec/clipboard/util/FileHelper;->setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x0

    const/high16 v10, 0x38000000

    :try_start_3
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v13

    :cond_b
    const-string/jumbo v10, "SemClipboardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "it\'s not file. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_c
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no preview image file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private notifyEvent(Landroid/os/Message;)V
    .locals 7

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_2

    monitor-exit v6

    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v6

    const/4 v3, 0x0

    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v5, v4, v3

    check-cast v5, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-interface {v5, v6, v2}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendResult(ZI)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez p2, :cond_1

    iput v2, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.clipboarduiservice"

    const-string/jumbo v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v6

    if-eqz p3, :cond_0

    if-nez v6, :cond_1

    invoke-interface {p3}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;->onSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3, v6}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;->onFailure(I)V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissDialog()V

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public filterClip(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 3

    const-string/jumbo v0, "filterClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    :cond_2
    const-string/jumbo v0, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilter - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    return-void
.end method

.method public getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getClips()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->getClips()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getCount()I
    .locals 4

    const-string/jumbo v2, "getCount"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "getCount - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v3, "getData"

    invoke-direct {p0, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->loadSEClipboard()V

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    :goto_0
    const-string/jumbo v3, "SemClipboardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLatestData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move v2, p1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getPersonaId()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public isClipboardAllowedToUse(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->isClipboardAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->isPackageAllowed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public isEnabled()Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->isEnabled()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "sService is null!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 1

    const-string/jumbo v0, "isFiltered"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    return v0
.end method

.method public isShowing()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "isShowing"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isShowing - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public pasteClip(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->pasteClip(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 4

    const-string/jumbo v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    :cond_2
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 5

    const-string/jumbo v1, "registerClipboardEventListener"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "registerClipboardUIInterface: Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/sec/clipboard/IClipboardService;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->removeAll()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeClip(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->removeClip(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 4

    const-string/jumbo v1, "requestPaste"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "SemClipboardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPaste : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->canAlternateClipData(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t convert format type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "clipdata is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)I
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-eqz p3, :cond_1

    move v3, v5

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v0

    return v0
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v0

    return v0
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 4

    const-string/jumbo v1, "showDialog"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v2, 0x1040612

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->startClipboardUIServiceService()V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showDialog()V

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialog(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "showDialog"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v3, 0x1040612

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v5

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->startClipboardUIServiceService()V

    const-string/jumbo v2, "SemClipboardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "showDialog - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_3

    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string/jumbo v2, "SemClipboardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string/jumbo v2, "SemClipboardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    const-string/jumbo v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "reg interface is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    invoke-interface {v1, v3}, Landroid/sec/clipboard/IClipboardService;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardService;->updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 4

    const-string/jumbo v1, "updateFilter"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
