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
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->notifyEvent(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_SET_DATA:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->FAIL_SET_DATA:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->PROTECTED_DATA_MAX:I

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 74
    iput v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 75
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 76
    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    .line 77
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    .line 79
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 80
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 81
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    .line 82
    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;

    .line 333
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 334
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    .line 341
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 343
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-nez v0, :cond_0

    .line 344
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "no knox"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    return-void
.end method

.method private add(Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZI)I
    .locals 6
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "withoutNoti"    # Z
    .param p3, "setPrimary"    # Z
    .param p4, "withoutSendingOrigin"    # Z
    .param p5, "callingId"    # I

    .prologue
    .line 1006
    const/4 v2, 0x1

    .line 1008
    .local v2, "result":I
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

    .line 1009
    if-eqz p1, :cond_5

    .line 1010
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1011
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "failed making file descriptor!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sendResult(ZI)V

    .line 1013
    const/4 v3, 0x1

    return v3

    .line 1016
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    .line 1017
    .local v1, "formatId":I
    if-eqz p4, :cond_2

    .line 1018
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 1019
    const/4 v2, 0x1

    .line 1032
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sendResult(ZI)V

    .line 1033
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->closeParcelFileDescriptor()V

    .line 1040
    .end local v1    # "formatId":I
    :goto_1
    return v2

    .line 1021
    .restart local v1    # "formatId":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, p1, v4, p5}, Landroid/sec/clipboard/IClipboardService;->setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1023
    :cond_2
    if-eqz p3, :cond_4

    .line 1024
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 1025
    const/4 v2, 0x1

    goto :goto_0

    .line 1027
    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, p1, v4, p5}, Landroid/sec/clipboard/IClipboardService;->setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1030
    :cond_4
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v2

    goto :goto_0

    .line 1035
    .end local v1    # "formatId":I
    :cond_5
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "withoutNoti"    # Z
    .param p4, "setPrimary"    # Z
    .param p5, "withoutSendingOrigin"    # Z

    .prologue
    const/high16 v4, 0x20000

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 808
    const-string/jumbo v0, "addData"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    return v3

    .line 812
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    .line 814
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    .line 815
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

    .line 816
    return v3

    .line 819
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 820
    invoke-virtual {p2, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 821
    .local v6, "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 822
    iput-boolean v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    .line 837
    .end local v6    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 838
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$3;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    .line 884
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

    .line 824
    .restart local v6    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    .line 826
    .end local v6    # "htmlData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 827
    invoke-virtual {p2, v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 828
    .local v7, "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v4, :cond_6

    .line 829
    iput-boolean v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    .line 831
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0

    .line 834
    .end local v7    # "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_7
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    goto :goto_0
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    .line 380
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    .line 381
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v1

    .line 383
    :cond_0
    const-string/jumbo v1, "semclipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 384
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 385
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    .line 386
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 387
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "Failed to get semclipboard service."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    sget-object v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-object v1
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 371
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 372
    .local v1, "userId":I
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v1, 0x0

    .line 374
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    return v1
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
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

    .line 1058
    const/4 v0, 0x0

    return v0

    .line 1060
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 14
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v13, 0x0

    .line 888
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 889
    .local v3, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1002
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    :sswitch_0
    move-object v8, p1

    .line 891
    check-cast v8, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 892
    .local v8, "target":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 893
    .local v4, "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 894
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 896
    const/4 v5, 0x0

    .line 898
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_0
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 899
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 912
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 913
    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "extraPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 915
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 916
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 917
    const/4 v5, 0x0

    .line 919
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_1
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 920
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 921
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 923
    return v13

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extraPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 901
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 902
    return v13

    .line 905
    .end local v0    # "e":Ljava/lang/Exception;
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

    .line 906
    return v13

    .line 909
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no bitmap file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 926
    .restart local v1    # "extraPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
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

    .line 927
    return v13

    .line 931
    .end local v1    # "extraPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no extra bitmap file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v8    # "target":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    :sswitch_1
    move-object v7, p1

    .line 937
    check-cast v7, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 938
    .local v7, "target":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v4

    .line 940
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_6

    .line 941
    :cond_5
    invoke-virtual {v3, v7}, Landroid/sec/clipboard/util/FileHelper;->setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z

    move-result v6

    .line 942
    .local v6, "result":Z
    if-eqz v6, :cond_6

    .line 943
    invoke-virtual {v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v4

    .line 947
    .end local v6    # "result":Z
    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 948
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 949
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 950
    const/4 v5, 0x0

    .line 952
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_2
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 953
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v7, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 954
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    .line 955
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 956
    return v13

    .line 959
    .end local v0    # "e":Ljava/lang/Exception;
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

    .line 960
    return v13

    .line 963
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no first image file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v7    # "target":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :sswitch_2
    move-object v9, p1

    .line 969
    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 970
    .local v9, "target":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 972
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_9

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_a

    .line 973
    :cond_9
    invoke-virtual {v3, v9}, Landroid/sec/clipboard/util/FileHelper;->setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z

    move-result v6

    .line 974
    .restart local v6    # "result":Z
    if-eqz v6, :cond_a

    .line 975
    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 979
    .end local v6    # "result":Z
    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 980
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 982
    const/4 v5, 0x0

    .line 984
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v10, 0x38000000

    :try_start_3
    invoke-static {v2, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 985
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v9, v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 986
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v0

    .line 987
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 988
    return v13

    .line 991
    .end local v0    # "e":Ljava/lang/Exception;
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

    .line 992
    return v13

    .line 995
    .end local v2    # "f":Ljava/io/File;
    :cond_c
    const-string/jumbo v10, "SemClipboardManager"

    const-string/jumbo v11, "no preview image file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 889
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
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1064
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1063
    :cond_0
    :pswitch_0
    return-void

    .line 1070
    :pswitch_1
    const/4 v1, 0x0

    .line 1071
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1072
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1073
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1074
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 1077
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1078
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1079
    .local v0, "N":I
    if-gtz v0, :cond_2

    monitor-exit v6

    .line 1080
    return-void

    .line 1082
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "listeners":[Ljava/lang/Object;
    monitor-exit v6

    .line 1085
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 1086
    aget-object v5, v4, v3

    check-cast v5, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-interface {v5, v6, v2}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 1085
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1077
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1064
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
    .param p1, "withoutNoti"    # Z
    .param p2, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 1044
    if-nez p1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, "msg":Landroid/os/Message;
    if-nez p2, :cond_1

    .line 1047
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1051
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1043
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1049
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    .prologue
    .line 596
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.clipboarduiservice"

    .line 598
    const-string/jumbo v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    .line 597
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 601
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p3, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;

    .prologue
    const/4 v3, 0x0

    .line 420
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I

    move-result v6

    .line 421
    .local v6, "result":I
    if-eqz p3, :cond_0

    .line 422
    if-nez v6, :cond_1

    .line 423
    invoke-interface {p3}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;->onSuccess()V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-interface {p3, v6}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;->onFailure(I)V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    .line 777
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 778
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void

    .line 782
    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissDialog()V

    .line 783
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public filterClip(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    .line 617
    const-string/jumbo v0, "filterClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 622
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 623
    const/4 p1, -0x1

    .line 624
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V

    .line 629
    if-eqz p2, :cond_2

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    .line 633
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

    .line 634
    iput p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 635
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 616
    return-void
.end method

.method public getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1163
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1164
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0

    .line 1166
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
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

    .prologue
    const/4 v2, 0x0

    .line 1148
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->getClips()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1151
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-object v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 484
    const-string/jumbo v2, "getCount"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    const/4 v2, 0x0

    return v2

    .line 488
    :cond_0
    const/4 v1, -0x1

    .line 490
    .local v1, "size":I
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 491
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "getCount - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v1

    .line 494
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 498
    :goto_0
    return v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 459
    const-string/jumbo v3, "getData"

    invoke-direct {p0, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    return-object v4

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 464
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 465
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v0

    .line 468
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->loadSEClipboard()V

    .line 470
    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    .line 471
    .local v2, "myFormat":I
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

    .line 472
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 476
    .end local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v2    # "myFormat":I
    :goto_1
    return-object v0

    .line 470
    .restart local v0    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_2
    move v2, p1

    .restart local v2    # "myFormat":I
    goto :goto_0

    .line 473
    .end local v2    # "myFormat":I
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getPersonaId()I
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 366
    :cond_1
    :goto_0
    return v0

    .line 360
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 364
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public isClipboardAllowedToUse(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 796
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 797
    :cond_0
    return v1

    .line 801
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

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    .line 1101
    const/4 v2, 0x0

    .line 1104
    .local v2, "isEnabled":Z
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1105
    sget-object v3, Lcom/samsung/android/content/clipboard/SemClipboardManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->isEnabled()Z

    move-result v2

    .line 1115
    .end local v2    # "isEnabled":Z
    :goto_0
    return v2

    .line 1107
    .restart local v2    # "isEnabled":Z
    :cond_0
    const-string/jumbo v3, "SemClipboardManager"

    const-string/jumbo v4, "sService is null!"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1111
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1112
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 640
    const-string/jumbo v0, "isFiltered"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    return v0

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsFiltered:Z

    return v0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    const-string/jumbo v1, "isShowing"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    return v3

    .line 402
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 403
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "isShowing - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v3

    .line 406
    :cond_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    return v3
.end method

.method public pasteClip(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->pasteClip(Ljava/lang/String;)V

    .line 1136
    :cond_0
    return-void
.end method

.method public registClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 4
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 503
    const-string/jumbo v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    const/4 v2, 0x0

    return v2

    .line 506
    :cond_0
    const/4 v0, 0x0

    .line 508
    .local v0, "Result":Z
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_2

    .line 509
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 512
    :cond_2
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_3

    .line 513
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v0

    .line 518
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 519
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    .prologue
    .line 555
    const-string/jumbo v1, "registerClipboardEventListener"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    return-void

    .line 559
    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 560
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "registerClipboardUIInterface: Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 567
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

    .line 573
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 554
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .prologue
    .line 1124
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/IClipboardService;->removeAll()Z

    move-result v0

    return v0

    .line 1127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeClip(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1180
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/IClipboardService;->removeClip(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1182
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v0, 0x0

    return v0
.end method

.method public requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 4
    .param p1, "clipdata"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 674
    const-string/jumbo v1, "requestPaste"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    return-void

    .line 677
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

    .line 679
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 681
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 682
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 677
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 685
    :cond_2
    if-eqz p1, :cond_4

    .line 686
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->canAlternateClipData(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 687
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 673
    :goto_1
    return-void

    .line 689
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

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 692
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "clipdata is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 698
    :cond_5
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 437
    const/4 v2, 0x0

    .line 440
    .local v2, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-static {p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 442
    .local v2, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v2, :cond_0

    .line 443
    return v3

    .line 445
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v3, 0x1

    .line 432
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v3, 0x0

    .line 450
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

    .prologue
    .line 745
    const-string/jumbo v1, "showDialog"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v2, 0x1040612

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 751
    return-void

    .line 754
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->startClipboardUIServiceService()V

    .line 756
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 757
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_3

    .line 762
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showDialog()V

    .line 744
    :goto_0
    return-void

    .line 764
    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 765
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

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialog(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    const/4 v5, 0x0

    .line 704
    const-string/jumbo v2, "showDialog"

    invoke-direct {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    return v5

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    const v3, 0x1040612

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 710
    return v5

    .line 713
    :cond_1
    const/4 v0, 0x1

    .line 714
    .local v0, "Result":Z
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->startClipboardUIServiceService()V

    .line 715
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

    .line 718
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 719
    const-string/jumbo v2, "SemClipboardManager"

    const-string/jumbo v3, "showDialog - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v5

    .line 724
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_3

    .line 725
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 726
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 727
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

    .line 736
    :goto_0
    return v0

    .line 729
    :cond_3
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mTypeId:I

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 730
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

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 734
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    .prologue
    .line 529
    const-string/jumbo v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    return-void

    .line 533
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 534
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_2

    .line 539
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 528
    :goto_0
    return-void

    .line 541
    :cond_2
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "reg interface is null!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    .prologue
    .line 582
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 584
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 586
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

    .line 581
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1195
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardService;->updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    return v0

    .line 1198
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "getService() is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method public updateFilter(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .prologue
    .line 649
    const-string/jumbo v1, "updateFilter"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    return-void

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
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

    .line 655
    return-void

    .line 659
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 660
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 664
    :cond_2
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    .line 665
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mClipboardEventImpl:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 666
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

    .line 648
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
