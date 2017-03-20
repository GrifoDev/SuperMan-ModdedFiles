.class public Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RichScreenSimICCIDChangedReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RichScreenSimICCIDChangedReceiver"

.field public static clearResult:Lcom/cmdm/control/util/client/ResultEntity;


# instance fields
.field private clearString:Ljava/lang/String;

.field private clearSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "RichScreenSimICCIDChangedReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v0, "rich_call_screen_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v0, "onReceive"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->log(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.action.SIM_ICCID_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "onReceive : SIM_ICCID_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->log(Ljava/lang/String;)V

    .line 36
    if-nez p1, :cond_2

    .line 37
    const-string v0, "context null"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    const-string v1, "9449040000"

    invoke-virtual {v0, v1}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearResult:Lcom/cmdm/control/util/client/ResultEntity;

    .line 41
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearSuccess:Z

    .line 42
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->getResMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearString:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSuccess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clearString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->clearString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenSimICCIDChangedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
